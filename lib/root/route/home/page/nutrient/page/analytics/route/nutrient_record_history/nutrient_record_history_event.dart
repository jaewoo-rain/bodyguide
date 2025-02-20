part of 'nutrient_record_history_bloc.dart';

@freezed
class NutrientRecordHistoryEvent with _$NutrientRecordHistoryEvent {
  const factory NutrientRecordHistoryEvent.togglePracticeCategory({
    required String value,
  }) = _togglePracticeCategory;

  const factory NutrientRecordHistoryEvent.nextMonth() = _nextMonth;
  const factory NutrientRecordHistoryEvent.previousMonth() = _previousMonth;
}
