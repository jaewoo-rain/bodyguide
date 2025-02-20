part of 'practice_analytics_bloc.dart';

@freezed
class PracticeAnalyticsState with _$PracticeAnalyticsState {
  const factory PracticeAnalyticsState({
    @Default(0) int mode,
  }) = _PracticeAnalyticsState;
}
