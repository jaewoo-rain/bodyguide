import 'dart:convert';

import 'package:app/app/app.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/app/misc/sqlite.dart';
import 'package:app/root/route/home/home_route.dart';
import 'package:app/root/route/sign/kakao_login_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart';
import '../system/app_preferences.dart';
import '../system/secure_storage_manager.dart';
import '../system/token_manager.dart';
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
        initialize: (event) async {
          final AppPreferences appPreferences = AppPreferences();
          bool isFirstRun = await appPreferences.isFirstRun();
          final storageManager = SecureStorageManager();
          final TokenManager tokenManager = TokenManager();
          final validAccessToken = await tokenManager.getValidAccessToken();

          if (!isFirstRun) {
            // 처음실행한것이 아닌경우
            print('처음실행한것이 아님');
            if (validAccessToken == null) {
              // accessToken 유무 확인
              print('Token이 없습니다.');
            } else {
              // accessToken Token이 존재
              if (!await storageManager.isTokenExpired("refresh")) {
                // 기한이 만료 확인
                // 기한이 만료되지 않음
                await tokenManager.refreshAccessToken();
                return App.instance.navigator.go(Routes.home.path);
              }
              print('기한이 만료됨');
            }
          } else {
            // 처음 실행한 경우
            print('처음 실행함');
            if (validAccessToken == null) {
              // accessToken 유무 확인
              print('Token이 없습니다.');
            } else {
              // accessToken Token이 존재 1740851325
              if (!await storageManager.isTokenExpired("refresh")) {
                // 기한이 만료 확인
                // 기한이 만료되지 않음
                await tokenManager.refreshAccessToken();
                return App.instance.navigator.go(Routes.home.path);
              }
              print('기한이 만료됨');
            }
            // await _appPreferences.setFirstRunCompleted(); // 실행했다고 말하기
          }
        },
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
