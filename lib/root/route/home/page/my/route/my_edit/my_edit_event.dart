part of 'my_edit_bloc.dart';

@freezed
class MyEditEvent with _$MyEditEvent {
  const factory MyEditEvent.mock() = _mock;
  const factory MyEditEvent.submit() = _submit;
}
