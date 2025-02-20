// part of 'practice_history_bloc.dart';
//
// @freezed
// class PracticeHistoryState with _$PracticeHistoryState {
//   const factory PracticeHistoryState({
//     required DateTime dateTime,
//     @Default(null) String? selectedPracticeCategory,
//   }) = _PracticeHistoryState;
// }

part of 'practice_history_bloc.dart';

@freezed
class PracticeHistoryState with _$PracticeHistoryState {
  const factory PracticeHistoryState({
    @Default(0) int currentPage,
    @Default(0) int pageSize,
    @Default(false) bool hasNext,
    @Default(const []) List<RecordGroupList> recordGroupList,
    @Default(null) String? selectedPracticeCategory,
    DateTime? currentTime,
  }) = _PracticeHistoryState;
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
      required List<Sets> sets,
      required double prevBestWeight,
      required int prevBestReps}) = _Exercise;
}

@freezed
class Sets with _$Sets {
  const factory Sets(
      {required int set,
      required double weight,
      required int reps,
      required double score,
      required double strength}) = _Sets;
}
