part of 'calendar_edit_bloc.dart';

@freezed
class CalendarEditState with _$CalendarEditState {
  const factory CalendarEditState({
    @Default('') String content,
  }) = _CalendarEditState;
}
