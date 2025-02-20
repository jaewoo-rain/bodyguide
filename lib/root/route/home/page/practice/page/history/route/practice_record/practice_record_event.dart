part of 'practice_record_bloc.dart';

@freezed
class PracticeRecordEvent with _$PracticeRecordEvent {
  const factory PracticeRecordEvent.selectPracticeCategory({
    required String value,
  }) = _selectPracticeCategory;

  const factory PracticeRecordEvent.clearPracticeCategory() =
      _clearPracticeCategory;

  const factory PracticeRecordEvent.selectPracticeItem({
    required Practice value,
  }) = _selectPracticeItem;

  const factory PracticeRecordEvent.onQueryChanged({
    required String value,
  }) = _onQueryChanged;
}
