part of 'practice_do_bloc.dart';

@freezed
class PracticeDoState with _$PracticeDoState {
  const factory PracticeDoState({
    @Default([]) List<PracticeRecord> records,
  }) = _PracticeDoState;
}

@freezed
class PracticeRecord with _$PracticeRecord {
  const factory PracticeRecord({
    required Practice practice,
    required List<PracticeSet> sets,
    required double prevBestWeight,
    required int prevBestRep,
  }) = _PracticeRecord;
}

@unfreezed
class PracticeSet with _$PracticeSet {
  factory PracticeSet({
    @Default("0") String weight, // 기본값을 "0"으로 설정
    @Default("0") String count, // 기본값을 "0"으로 설정
  }) = _PracticeSet;
}
