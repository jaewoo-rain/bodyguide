import 'package:app/app/constant/keys.dart';
import 'package:app/app/core/auth_core.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/app/core/overlay_cover.dart';
import 'package:app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:logger/logger.dart';

class App {
  App._();
  static final App _instance = App._();
  static App get instance => _instance;

  bool? _secondaryInitialized;
  bool? get secondaryInitialized => _secondaryInitialized;

  late NavigatorCore _navigator;
  late OverlayCore _overlay;
  late AuthCore _auth;
  late Logger _logger;

  NavigatorCore get navigator => _navigator;
  OverlayCore get overlay => _overlay;
  AuthCore get auth => _auth;
  Logger get log => _logger;

  static Future<void> initializePrimary() async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white.withOpacity(0),
        systemNavigationBarColor: Colors.black,
      ),
    );

    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.top,
        SystemUiOverlay.bottom,
      ],
    );

    await SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );

    KakaoSdk.init(
      nativeAppKey: kakaoNativeAppKey,
      javaScriptAppKey: kakaoJavaScriptKey,
    );

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    _instance._overlay = OverlayCore();
    _instance._logger = Logger();

    _instance._navigator = NavigatorCore();
    _instance._auth = AuthCore();

    await _instance._navigator.initialize();
  }

  Future<void> initializeSecondary({
    required BuildContext context,
  }) async {
    if (_secondaryInitialized == null) {
      _secondaryInitialized = false;

      // await Future.wait([
      //   GoogleFonts.pendingFonts([
      //     GoogleFonts.notoSansKr(),
      //   ]),
      // ]);

      await _instance._auth.initialize();

      _secondaryInitialized = true;
    }
  }
}
