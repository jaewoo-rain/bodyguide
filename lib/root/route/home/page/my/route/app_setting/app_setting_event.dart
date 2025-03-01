part of 'app_setting_bloc.dart';

@freezed
class AppSettingEvent with _$AppSettingEvent {
  const factory AppSettingEvent.onToggleMyHistoryAlarm() =
      _onToggleMyHistoryAlarm;
  const factory AppSettingEvent.onToggleBodyGuideAlarm() =
      _onToggleBodyGuideAlarm;
  const factory AppSettingEvent.logout() = _logout;
}
