part of 'practice_record_bloc.dart';

@freezed
class PracticeRecordState with _$PracticeRecordState {
  const factory PracticeRecordState({
    @Default('') String query,
    @Default({}) Set<Practice> searchedPracticeItems,
    @Default(null) String? selectedPracticeCategory,
    @Default({}) Set<Practice> selectedPracticeItems,
  }) = _PracticeRecordState;
}
