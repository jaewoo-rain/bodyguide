part of 'nutrient_analytics_bloc.dart';

@freezed
class NutrientAnalyticsState with _$NutrientAnalyticsState {
  const factory NutrientAnalyticsState({
    @Default(0) int mode,
  }) = _NutrientAnalyticsState;
}
