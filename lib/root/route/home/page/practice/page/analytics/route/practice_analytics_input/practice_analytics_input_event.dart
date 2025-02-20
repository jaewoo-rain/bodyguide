part of 'practice_analytics_input_bloc.dart';

@freezed
class PracticeAnalyticsInputEvent with _$PracticeAnalyticsInputEvent {
  const factory PracticeAnalyticsInputEvent.onPageChanged({
    required PracticeAnalyticsInputPage value,
  }) = _onPageChanged;

  const factory PracticeAnalyticsInputEvent.onBenchPressWeightChanged({
    required String value,
  }) = _onBenchPressWeightChanged;
  const factory PracticeAnalyticsInputEvent.onBenchPressCountChanged({
    required String value,
  }) = _onBenchPressCountChanged;
  const factory PracticeAnalyticsInputEvent.onSquatWeightChanged({
    required String value,
  }) = _onSquatWeightChanged;
  const factory PracticeAnalyticsInputEvent.onSquatCountChanged({
    required String value,
  }) = _onSquatCountChanged;
  const factory PracticeAnalyticsInputEvent.onDeadLiftWeightChanged({
    required String value,
  }) = _onDeadLiftWeightChanged;
  const factory PracticeAnalyticsInputEvent.onDeadLiftCountChanged({
    required String value,
  }) = _onDeadLiftCountChanged;
  const factory PracticeAnalyticsInputEvent.onOverHeadPressWeightChanged({
    required String value,
  }) = _onOverHeadPressWeightChanged;
  const factory PracticeAnalyticsInputEvent.onOverHeadPressCountChanged({
    required String value,
  }) = _onOverHeadPressCountChanged;
  const factory PracticeAnalyticsInputEvent.onPushUpCountChanged({
    required String value,
  }) = _onPushUpCountChanged;
  const factory PracticeAnalyticsInputEvent.onPullUpCountChanged({
    required String value,
  }) = _onPullUpCountChanged;

  const factory PracticeAnalyticsInputEvent.submit() = _submit;
}
