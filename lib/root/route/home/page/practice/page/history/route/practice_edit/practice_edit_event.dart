part of 'practice_edit_bloc.dart';

@freezed
class PracticeEditEvent with _$PracticeEditEvent {
  const factory PracticeEditEvent.toggle({
    required int value,
  }) = _toggle;
}
