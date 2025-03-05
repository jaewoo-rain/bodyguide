import 'dart:convert';

import 'package:app/app/app.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import '../system/app_preferences.dart';
import '../system/secure_storage_manager.dart';
import '../system/token_manager.dart';

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
            App.instance.navigator.go(Routes.login.path);
            if (validAccessToken == null) {
              // accessToken 유무 확인
              print('Token이 없습니다.');
            } else {
              // accessToken Token이 존재
              if (!await storageManager.isTokenExpired("refresh")) {
                String? token;
                token = await storageManager.getAccessToken();
                try {
                  final parts = token?.split('.');
                  final payload = json.decode(
                    utf8.decode(
                        base64Url.decode(base64Url.normalize(parts![1]))),
                  );
                  print('찾는거: ${payload['role']}');
                  if (payload['role'] == 'ROLE_GUEST') {
                    App.instance.navigator.go(Routes.onboard.path);
                  } else if (payload['role'] == 'ROLE_USER') {
                    App.instance.navigator.go(Routes.home.path);
                  } else {
                    App.instance.navigator.go(Routes.sign.path);
                  }
                } catch (e) {
                  print('JWT 파싱 오류: $e');
                  return true;
                }
                // print("decoded: ${decoded['role']}");
                // final parts = token.split('.');
                // print("찾는거: $decoded");

                // final role = payload['role'];
                // print("roleeee: $role");
                // 기한이 만료 확인
                // 기한이 만료되지 않음
                // await tokenManager.refreshAccessToken();
                // 여기가문제
              }
              print('기한이 만료됨');
            }
          } else {
            // 처음 실행한 경우
            print("처음 실행함");
            // await _appPreferences.setFirstRunCompleted(); // 실행했다고 말하기
          }
        },
      );
    });
  }

  final PageController splashPageController;
  final PageController outerPageController;
}
