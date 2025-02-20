import 'package:app/app/app.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/app/misc/sqlite.dart';
import 'package:app/root/route/home/home_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart';
import 'google_login_service.dart';

part 'sign_event.dart';
part 'sign_state.dart';
part 'sign_bloc.freezed.dart';

class SignBloc extends Bloc<SignEvent, SignState> {
  SignBloc()
      : splashPageController = PageController(),
        outerPageController = PageController(),
        super(
          const SignState(),
        ) {
    on<SignEvent>((event, emit) async {
      await event.map(
        initialize: (event) async {},
        signInWithGoogle: (event) async {
          // 로딩 시작
          emit(state.copyWith(isLoading: true, errorMessage: null));

          // GoogleLoginService 인스턴스 생성
          final service = GoogleLoginService();

          try {
            // (1) 구글 로그인 시작 + 결과 대기
            final result = await service.startGoogleLogin(event.context);

            // (2) 결과값에 따라 처리
            //     ex) "Login Successful!" 이면 홈화면 이동

            if (result != null && result.contains('Login Successful!')) {
              // 홈 화면으로 이동

              DatabaseHelper().initDatabase();
              // testDatabase("EXERCISE");
              // App.instance.navigator.go(Routes.onboard.path);

              App.instance.log.d('홈 화면으로 이동 완료');
              emit(state.copyWith(isLoading: false));
            } else {
              // 실패 메시지 표시
              App.instance.log.d('구글 로그인 실패: $result');
              emit(state.copyWith(isLoading: false, errorMessage: result));
            }
          } catch (error) {
            // 예외(Completer error 등)
            final msg = error.toString();
            App.instance.log.e('구글 로그인 에러: $msg');
            emit(state.copyWith(isLoading: false, errorMessage: msg));
          }

          // App.instance.overlay.cover(on: true);

///////////////////////////////////////////////////////
          // // 로딩 종료
          // App.instance.overlay.cover(on: false, message: result);
          //
          // // 로그 표시
          // App.instance.log.d(result);

          // await App.instance.auth.signInWithGoogle().then((value) {
          //   if (value != null) {
          //     App.instance.overlay.cover(on: false, message: value);
          //     App.instance.log.d(value);
          //   }
          // });
        },
        signInWithKakao: (event) async {
          App.instance.overlay.cover(on: true);

          await App.instance.auth.signInWithKakao().then((value) {
            if (value != null) {
              App.instance.overlay.cover(on: false, message: value);
              App.instance.log.d(value);
            }
          });
        },
        // signInWithApple: (event) async {
        //   App.instance.overlay.cover(on: true);
        //
        //   await App.instance.auth.signInWithApple().then((value) {
        //     if (value != null) {
        //       App.instance.overlay.cover(on: false, message: value);
        //     } else {
        //       App.instance.log.d(value);
        //     }
        //   });
        // },
      );
    });
  }

  final PageController splashPageController;
  final PageController outerPageController;
}
