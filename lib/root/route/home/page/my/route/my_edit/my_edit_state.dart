part of 'my_edit_bloc.dart';

@freezed
class MyEditState with _$MyEditState {
  const factory MyEditState({
    @Default(false) bool mock,
  }) = _MyEditState;
}
