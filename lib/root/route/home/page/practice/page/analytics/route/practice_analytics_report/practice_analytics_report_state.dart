part of 'practice_analytics_report_bloc.dart';

@freezed
class PracticeAnalyticsReportState with _$PracticeAnalyticsReportState {
  const factory PracticeAnalyticsReportState({
    ExerciseAnalysisReport? report, // API 응답 결과를 저장하는 필드
    BigThree? bigThree,
    DailyVolumesGraph? dailyVolume,
    MonthVolumesGraph? monthlyVolume,
    WeekVolumeGraph? weekVolume,
    @Default({}) Set<String> goals, // 기존 goals 필드가 있다면 그대로 유지 가능
  }) = _PracticeAnalyticsReportState;
}
