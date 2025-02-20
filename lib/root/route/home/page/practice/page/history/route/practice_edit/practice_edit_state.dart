part of 'practice_edit_bloc.dart';

@freezed
class PracticeEditState with _$PracticeEditState {
  const factory PracticeEditState({
    @Default([]) List<Practice> practices,
    @Default([]) List<int> selections,
  }) = _PracticeEditState;
}
