part of 'nutrient_analytics_report_bloc.dart';

@freezed
class NutrientAnalyticsReportState with _$NutrientAnalyticsReportState {
  const factory NutrientAnalyticsReportState({
    @Default({}) Set<String> goals,
  }) = _NutrientAnalyticsReportState;
}
