part of 'calendar_edit_bloc.dart';

@freezed
class CalendarEditEvent with _$CalendarEditEvent {
  const factory CalendarEditEvent.onContentChanged({
    required String value,
  }) = _onContentChanged;
}
