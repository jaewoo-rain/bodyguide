part of 'practice_analytics_report_bloc.dart';

@freezed
class PracticeAnalyticsReportState with _$PracticeAnalyticsReportState {
  const factory PracticeAnalyticsReportState({
    @Default({}) Set<String> goals,
  }) = _PracticeAnalyticsReportState;
}
