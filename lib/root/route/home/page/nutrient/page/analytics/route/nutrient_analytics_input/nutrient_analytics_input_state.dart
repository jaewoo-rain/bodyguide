part of 'nutrient_analytics_input_bloc.dart';

@freezed
class NutrientAnalyticsInputState with _$NutrientAnalyticsInputState {
  const factory NutrientAnalyticsInputState({
    @Default(NutrientAnalyticsInputPage.lifePattern)
    NutrientAnalyticsInputPage page,
    @Default(null) LifePattern? lifePattern,
    @Default('') String currentWeight,
    @Default('') String goalWeight,
    @Default('') String calorieValue,
    @Default('') String calorieDuration,
    @Default(null) MenuType? menuType,
    @Default('') String carbohydrate,
    @Default('') String protein,
    @Default('') String fat,
    @Default('') String getUpHour,
    @Default('') String getUpMinute,
    @Default('') String sleepHour,
    @Default('') String sleepMinute,
  }) = _NutrientAnalyticsInputState;
}
