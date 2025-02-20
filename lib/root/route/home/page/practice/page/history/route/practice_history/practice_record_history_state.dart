// part of 'practice_history_bloc.dart';
//
// @freezed
// class PracticeRecordHistoryState with _$PracticeRecordHistoryState {
//   const factory PracticeRecordHistoryState({
//     required DateTime dateTime,
//     @Default(null) String? selectedPracticeCategory,
//   }) = _PracticeRecordHistoryState;
// }

part of 'practice_record_history_bloc.dart';

@freezed
class PracticeRecordHistoryState with _$PracticeRecordHistoryState {
  const factory PracticeRecordHistoryState({
    required int currentPage,
    required int pageSize,
    required bool hasNext,
    required List<RecordGroupList> recordGroupList,
    @Default(null) String? selectedPracticeCategory,
    required DateTime currentTime,
  }) = _PracticeRecordHistoryState;

  // factory PracticeRecordHistoryState.initial() => PracticeRecordHistoryState(
  //       currentPage: 0,
  //       pageSize: 0,
  //       hasNext: false,
  //       recordGroupList: [],
  //       currentTime: DateTime.now(),
  //     );
}

@freezed
class RecordGroupList with _$RecordGroupList {
  const factory RecordGroupList({
    required int groupId,
    required DateTime exerciseDate,
    required List<Exercise> exercises,
  }) = _RecordGroupList;
}

@freezed
class Exercise with _$Exercise {
  const factory Exercise(
      {required int exerciseId,
      required List<Set> sets,
      required double prevBestWeight,
      required int prevBestReps}) = _Exercise;
}

@freezed
class Set with _$Set {
  const factory Set(
      {required int set,
      required double weight,
      required int reps,
      required double score,
      required double strength}) = _Set;
}
