part of 'nutrient_analytics_bloc.dart';

@freezed
class NutrientAnalyticsEvent with _$NutrientAnalyticsEvent {
  const factory NutrientAnalyticsEvent.setMode({
    required int mode,
  }) = _setMode;
}
