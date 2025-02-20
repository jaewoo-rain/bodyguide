part of 'calendar_bloc.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.onPageChanged({
    required DateTime value,
  }) = _onPageChanged;
  const factory CalendarEvent.nextMonth() = _nextMonth;
  const factory CalendarEvent.previousMonth() = _previousMonth;

  const factory CalendarEvent.toggleCalendarEventType({
    required CalendarEventType value,
  }) = _toggleCalendarEventType;

  const factory CalendarEvent.addEvent({
    required DateTime dateTime,
    required String content,
  }) = _addEvent;

  const factory CalendarEvent.editEvent({
    required DateTime dateTime,
    required String content,
  }) = _editEvent;
}
