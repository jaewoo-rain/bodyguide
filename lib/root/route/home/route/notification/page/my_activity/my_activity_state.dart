part of 'my_activity_bloc.dart';

@freezed
class MyActivityState with _$MyActivityState {
  const factory MyActivityState({
    @Default([]) List<MyActivityNotification> elements,
  }) = _MyActivityState;
}
