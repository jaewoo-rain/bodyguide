import 'dart:collection';

import 'package:app/app/app.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/model/local/event.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:table_calendar/table_calendar.dart';

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
