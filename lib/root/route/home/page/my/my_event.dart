part of 'my_bloc.dart';

@freezed
class MyEvent with _$MyEvent {
  const factory MyEvent.mock() = _mock;
  const factory MyEvent.refresh() = _refresh;
}
