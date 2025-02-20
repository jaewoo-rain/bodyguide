part of 'practice_history_bloc.dart';

@freezed
class PracticeHistoryEvent with _$PracticeHistoryEvent {
  // const factory PracticeHistoryEvent.togglePracticeCategory({
  //   required String value,
  // }) = _togglePracticeCategory;

  // const factory PracticeHistoryEvent.nextMonth() = _nextMonth;
  // const factory PracticeHistoryEvent.previousMonth() = _previousMonth;

  // JSON 데이터를 불러오는 이벤트 추가
  const factory PracticeHistoryEvent.loadPracticeRecord() = _LoadPracticeRecord;
  const factory PracticeHistoryEvent.refresh() = _refresh;
}
