part of 'practice_analytics_bloc.dart';

@freezed
class PracticeAnalyticsEvent with _$PracticeAnalyticsEvent {
  const factory PracticeAnalyticsEvent.setMode({
    required int mode,
  }) = _setMode;
}
