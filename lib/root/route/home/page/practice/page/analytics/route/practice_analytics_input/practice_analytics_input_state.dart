part of 'practice_analytics_input_bloc.dart';

@freezed
class PracticeAnalyticsInputState with _$PracticeAnalyticsInputState {
  const factory PracticeAnalyticsInputState({
    @Default(PracticeAnalyticsInputPage.benchPress)
    PracticeAnalyticsInputPage page,
    @Default('') String benchPressWeight,
    @Default('') String benchPressCount,
    @Default('') String squatWeight,
    @Default('') String squatCount,
    @Default('') String deadLiftWeight,
    @Default('') String deadLiftCount,
    @Default('') String overHeadPressWeight,
    @Default('') String overHeadPressCount,
    @Default('') String pushUpCount,
    @Default('') String pullUpCount,
  }) = _PracticeAnalyticsInputState;
}
