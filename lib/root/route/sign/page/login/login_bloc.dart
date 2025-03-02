import 'dart:convert';

import 'package:app/app/app.dart';
import 'package:app/app/misc/sqlite.dart';
import 'package:app/app/core/kakao_login_service.dart';
import 'package:app/root/route/system/app_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app/core/google_login_service.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    initState();
    on<LoginEvent>((event, emit) async {
      await event.map(
        loginInWithGoogle: (event) async {
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

          // await App.instance.auth.loginInWithGoogle().then((value) {
          //   if (value != null) {
          //     App.instance.overlay.cover(on: false, message: value);
          //     App.instance.log.d(value);
          //   }
          // });
        },
        loginInWithKakao: (event) async {
          // 로딩 시작: 상태 업데이트 및 오버레이 표시
          emit(state.copyWith(isLoading: true, errorMessage: null));
          App.instance.overlay.cover(on: true);

          // KakaoLoginService 인스턴스 생성
          final service = KakaoLoginService();

          try {
            // (1) 카카오 로그인 시작 + 결과 대기
            final result = await service.startKakaoLogin(event.context);

            // (2) 결과값에 따라 처리
            if (result != null && result.contains('Login Successful!')) {
              // 홈 화면으로 이동 (필요시 Database 초기화 등)
              DatabaseHelper().initDatabase();
              App.instance.log.d('홈 화면으로 이동 완료 (Kakao)');
              emit(state.copyWith(isLoading: false));
            } else {
              // 로그인 실패: 에러 메시지 표시
              App.instance.log.d('카카오 로그인 실패: $result');
              emit(state.copyWith(isLoading: false, errorMessage: result));
            }
          } catch (error) {
            // 예외 발생 처리
            final msg = error.toString();
            App.instance.log.e('카카오 로그인 에러: $msg');
            emit(state.copyWith(isLoading: false, errorMessage: msg));
          } finally {
            // 로딩 종료: 오버레이 숨김
            App.instance.overlay.cover(on: false);
          }
        },

        // loginInWithApple: (event) async {
        //   App.instance.overlay.cover(on: true);
        //
        //   await App.instance.auth.loginInWithApple().then((value) {
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
  Future<void> initState() async {
    final appPreferences = AppPreferences();
    if (await appPreferences.isFirstRun()) {
      await appPreferences.setFirstRunCompleted(); // 실행했다고 말하기
      print("처음 들어옴");
    } else {
      print("처음 아님");
    }
  }
}
