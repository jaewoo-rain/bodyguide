part of 'app_setting_bloc.dart';

@freezed
class AppSettingState with _$AppSettingState {
  const factory AppSettingState({
    @Default(true) bool myHistoryAlarm,
    @Default(false) bool bodyGuideAlarm,
  }) = _AppSettingState;
}
