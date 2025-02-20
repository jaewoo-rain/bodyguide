part of 'calendar_bloc.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState({
    required DateTime dateTime,
    required LinkedHashMap<DateTime, List<Event>> events,
    @Default({}) Set<CalendarEventType> selectedCalendarEventTypes,
  }) = _CalendarState;
}
