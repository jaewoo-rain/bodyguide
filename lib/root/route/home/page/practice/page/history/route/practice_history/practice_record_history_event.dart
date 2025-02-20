part of 'practice_record_history_bloc.dart';

@freezed
class PracticeRecordHistoryEvent with _$PracticeRecordHistoryEvent {
  const factory PracticeRecordHistoryEvent.togglePracticeCategory({
    required String value,
  }) = _togglePracticeCategory;

  const factory PracticeRecordHistoryEvent.nextMonth() = _nextMonth;
  const factory PracticeRecordHistoryEvent.previousMonth() = _previousMonth;

  // JSON 데이터를 불러오는 이벤트 추가
  const factory PracticeRecordHistoryEvent.loadPracticeRecord({
    required Map<String, dynamic> jsonData,
  }) = _LoadPracticeRecord;
}
