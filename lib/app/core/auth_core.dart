import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:app/app/app.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/model/remote/custom_user.dart';
import 'package:app/model/system/custom_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart'
    as lib_kakao;

import 'package:app_links/app_links.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';

class AuthCore {
  AuthCore() : _customUserStreamController = StreamController.broadcast();

  StreamSubscription<User?>? _authStateChanges;

  final StreamController<CustomUser?> _customUserStreamController;
  StreamSubscription<DocumentSnapshot<CustomUser>>? _userDocumentChanges;

  Stream<CustomUser?> get customUserChanges async* {
    yield _customUser;
    yield* _customUserStreamController.stream;
  }

  // User? _currentUser;
  CustomUser? _customUser;
  CustomUser? get customUser => _customUser;

  Future<void> initialize() async {
    _authStateChanges = FirebaseAuth.instance.authStateChanges().listen(
          _onAuthStateChanges,
        );
  }

  Future<void> _onAuthStateChanges(User? user) async {
    if (user != null) {
      _userDocumentChanges ??= FirebaseFirestore.instance
          .collection(
            'users',
          )
          .withConverter(
            fromFirestore: CustomUser.fromFirstore,
            toFirestore: CustomUser.toFirestore,
          )
          .doc(
            user.uid,
          )
          .snapshots()
          .listen(
            _onUserDocumentChanges,
          );
    } else {
      _customUserStreamController.add(
        _customUser = null,
      );

      unawaited(_userDocumentChanges?.cancel());
      _userDocumentChanges = null;

      App.instance.navigator.go(
        Routes.sign.path,
      );
    }
  }

  void _onUserDocumentChanges(DocumentSnapshot<CustomUser> documentSnapshot) {
    if (documentSnapshot.exists) {
      CustomUser? customUser;
      try {
        customUser = documentSnapshot.data();
      } catch (exception) {
        customUser = null;
      }

      if (customUser != null) {
        CustomRoute? customRoute;

        if (_customUser != null) {
          if (_customUser?.baseInfo == null) {
            if (customUser.baseInfo != null) {
              customRoute = Routes.home;
            }
          } else {
            if (customUser.baseInfo == null) {
              customRoute = Routes.onboard;
            }
          }
        } else {
          customRoute = switch (customUser.baseInfo != null) {
            true => Routes.home,
            false => Routes.onboard,
          };
        }

        _customUserStreamController.add(
          _customUser = customUser,
        );

        if (customRoute != null) {
          App.instance.navigator.go(
            customRoute.path,
          );
        }
      }
    }
  }

  // Future<String?> signInWithGoogle() async {
  //   String? result;
  //
  //   await GoogleSignIn().signIn().then(
  //     (account) async {
  //       if (account != null) {
  //         await account.authentication.then(
  //           (authentication) async {
  //             final OAuthCredential credential = GoogleAuthProvider.credential(
  //               accessToken: authentication.accessToken,
  //               idToken: authentication.idToken,
  //             );
  //
  //             await FirebaseAuth.instance.signInWithCredential(credential).then(
  //               (value) {
  //                 //
  //               },
  //             ).catchError(
  //               (error) {
  //                 result = error.toString();
  //               },
  //             );
  //           },
  //         ).catchError(
  //           (error) {
  //             result = error.toString();
  //           },
  //         );
  //       } else {
  //         result = "Can't Get Google Account";
  //       }
  //     },
  //   ).catchError((error) {
  //     result = error.toString();
  //   });
  //
  //   return result;
  // }

  Future<String?> signInWithApple() async {
    String? result;

    await FirebaseAuth.instance
        .signInWithProvider(AppleAuthProvider())
        .then((value) {
      //
    }).catchError((error) {
      result = error.toString();
    });

    App.instance.log.d(result);

    return result;
  }

  Future<String?> signInWithKakao() async {
    String? result;

    Future<String?> onTakeTokens({
      required String? idToken,
      required String accessToken,
    }) async {
      if (idToken != null) {
        if (Platform.isIOS) {
          await Future.delayed(
            const Duration(
              seconds: 1,
            ),
          );
        }

        await FirebaseAuth.instance
            .signInWithProvider(
          OAuthProvider(
            "oidc.kakao",
          )..credential(
              signInMethod: "kakao",
              idToken: idToken,
              accessToken: accessToken,
            ),
        )
            .then((value) {
          //
        }).catchError((error) {
          result = error.toString();
        });
      } else {
        result = "Can't take Tokens";
      }

      return result;
    }

    await lib_kakao.isKakaoTalkInstalled().then((value) async {
      if (value) {
        await lib_kakao.UserApi.instance
            .loginWithKakaoTalk()
            .then((value) async {
          result = await onTakeTokens(
            idToken: value.idToken,
            accessToken: value.accessToken,
          );
        }).catchError((error) {
          result = error.toString();
        });
      } else {
        await lib_kakao.UserApi.instance
            .loginWithKakaoAccount()
            .then((value) async {
          result = await onTakeTokens(
            idToken: value.idToken,
            accessToken: value.accessToken,
          );
        }).catchError((error) {
          result = error.toString();
        });
      }
    }).catchError((error) {
      result = error.toString();
    });

    return result;
  }

  Future<String?> signOut() async {
    String? result;

    switch (FirebaseAuth
        .instance.currentUser?.providerData.firstOrNull?.providerId) {
      case 'google.com':
        await GoogleSignIn().signOut().then((value) async {
          await FirebaseAuth.instance.signOut().then((value) {
            //
          }).catchError((error) {
            result = error.toString();
          });
        }).catchError((error) {
          result = error.toString();
        });
        break;

      case 'oidc.kakao':
        await lib_kakao.UserApi.instance.logout().then((value) async {
          await FirebaseAuth.instance.signOut().then((value) {
            //
          }).catchError((error) {
            App.instance.log.d(
              error,
            );
            result = error.toString();
          });
        }).catchError((error) {
          result = error.toString();
        });
        break;

      // case 'apple.com':
      // case 'password':
      default:
        await FirebaseAuth.instance.signOut().then((value) {
          //
        }).catchError((error) {
          result = error.toString();
        });
        break;
    }

    return result;
  }
}
