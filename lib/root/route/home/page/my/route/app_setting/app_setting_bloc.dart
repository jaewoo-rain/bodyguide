import 'dart:collection';

import 'package:app/app/app.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/model/local/event.dart';
import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../../../app/core/navigator_core.dart';
import '../../../../../system/api_post_request_manager.dart';
import '../../../../../system/secure_storage_manager.dart';
import '../../../../../system/token_manager.dart';

part 'app_setting_event.dart';
part 'app_setting_state.dart';
part 'app_setting_bloc.freezed.dart';

class AppSettingBloc extends Bloc<AppSettingEvent, AppSettingState> {
  AppSettingBloc()
      : super(
          const AppSettingState(),
        ) {
    on<AppSettingEvent>((event, emit) async {
      await event.map(
        logout: (event) async {
          try {
            final apiManager =
                ApiRequestManager(dio: Dio(), tokenManager: TokenManager());

            print('로그아웃');

            final result = await apiManager.deleteRequest(
              path: 'auth/logout',
              params: {},
              failRoute: Routes.sign.path,
            );
            if (result.containsKey('error')) {
              print('API 호출 실패: ${result['message']}');
            } else {
              print('API 호출 성공: $result');

              debugPrint('삭제 완료: $result', wrapWidth: 1024);
              App.instance.navigator.go(Routes.sign.path);
              final storageManager = SecureStorageManager();
              storageManager.clearAll();
            }
          } catch (e, stackTrace) {
            print('API 요청 중 오류 발생: $e');
          }
        },
        onToggleMyHistoryAlarm: (event) async {
          emit(
            state.copyWith(
              myHistoryAlarm: !state.myHistoryAlarm,
            ),
          );
        },
        onToggleBodyGuideAlarm: (event) async {
          emit(
            state.copyWith(
              bodyGuideAlarm: !state.bodyGuideAlarm,
            ),
          );
        },
      );
    });
  }
}
