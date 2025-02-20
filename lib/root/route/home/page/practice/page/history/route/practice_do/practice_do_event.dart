part of 'practice_do_bloc.dart';

@freezed
class PracticeDoEvent with _$PracticeDoEvent {
  const factory PracticeDoEvent.onWeightChanged({
    // 무게변화
    required int practiceIndex,
    required int setIndex,
    required String value,
  }) = _onWeightChanged;

  const factory PracticeDoEvent.onCountChanged({
    // 횟수변화
    required int practiceIndex,
    required int setIndex,
    required String value,
  }) = _onCountChanged;

  const factory PracticeDoEvent.onChanged({
    // 수치 변화
    required int practiceIndex,
    required int setIndex,
  }) = _onChanged;

  const factory PracticeDoEvent.addPractices({
    required Set<Practice> practices,
  }) = _addPractices;

  const factory PracticeDoEvent.removePractices({
    required List<int> practices,
  }) = _removePractices;

  const factory PracticeDoEvent.submit({
    required bool submit,
  }) = _submit;
}
