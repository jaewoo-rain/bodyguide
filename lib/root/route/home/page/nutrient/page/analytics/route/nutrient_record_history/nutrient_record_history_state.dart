part of 'nutrient_record_history_bloc.dart';

@freezed
class NutrientRecordHistoryState with _$NutrientRecordHistoryState {
  const factory NutrientRecordHistoryState({
    required DateTime dateTime,
    @Default(null) String? selectedPracticeCategory,
  }) = _NutrientRecordHistoryState;
}
