part of 'nutrient_analytics_input_bloc.dart';

@freezed
class NutrientAnalyticsInputEvent with _$NutrientAnalyticsInputEvent {
  const factory NutrientAnalyticsInputEvent.onPageChanged({
    required NutrientAnalyticsInputPage value,
  }) = _onPageChanged;

  const factory NutrientAnalyticsInputEvent.onSelectLifePattern({
    required LifePattern value,
  }) = _onSelectLifeStyle;
  const factory NutrientAnalyticsInputEvent.onCurrentWeightChanged({
    required String value,
  }) = _onCurrentWeightChanged;
  const factory NutrientAnalyticsInputEvent.onGoalWeightChanged({
    required String value,
  }) = _onGoalWeightChanged;
  const factory NutrientAnalyticsInputEvent.onCalorieValueChanged({
    required String value,
  }) = _onCalorieValueChanged;
  const factory NutrientAnalyticsInputEvent.onCalorieDurationChanged({
    required String value,
  }) = _onCalorieDurationChanged;
  const factory NutrientAnalyticsInputEvent.onSelectMenuType({
    required MenuType value,
  }) = _onSelectMenuType;
  const factory NutrientAnalyticsInputEvent.onCarbohydrateChanged({
    required String value,
  }) = _onCarbohydrateChanged;
  const factory NutrientAnalyticsInputEvent.onProteinChanged({
    required String value,
  }) = _onProteinChanged;
  const factory NutrientAnalyticsInputEvent.onFatChanged({
    required String value,
  }) = _onFatChanged;
  const factory NutrientAnalyticsInputEvent.onGetUpHourChanged({
    required String value,
  }) = _onGetUpHourChanged;
  const factory NutrientAnalyticsInputEvent.onGetUpMinuteChanged({
    required String value,
  }) = _onGetUpMinuteChanged;
  const factory NutrientAnalyticsInputEvent.onSleepHourChanged({
    required String value,
  }) = _onSleepHourChanged;
  const factory NutrientAnalyticsInputEvent.onSleepMinuteChanged({
    required String value,
  }) = _onSleepMinuteChanged;
  
  const factory NutrientAnalyticsInputEvent.submit() = _submit;
}
