import 'dart:collection';

import 'package:app/app/app.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/model/local/event.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:table_calendar/table_calendar.dart';

part 'calendar_event.dart';
part 'calendar_state.dart';
part 'calendar_bloc.freezed.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {

  static int _hashCode(DateTime value) => value.day * 1000000 + value.month * 10000 + value.year;

  CalendarBloc()
      : super(
    CalendarState(
      dateTime: DateTime.now().toUtc(),
      events: LinkedHashMap(
        equals: isSameDay,
        hashCode: _hashCode,
      ),
    ),
  ) {
    on<CalendarEvent>((event, emit) async {
      await event.map(
        onPageChanged: (event) async {
          emit(
            state.copyWith(
              dateTime: event.value,
            ),
          );
        },
        previousMonth: (event) async {
          emit(
            state.copyWith(
              dateTime: state.dateTime.copyWith(
                month: state.dateTime.month - 1,
              ),
            ),
          );
        },
        nextMonth: (event) async {
          emit(
            state.copyWith(
              dateTime: state.dateTime.copyWith(
                month: state.dateTime.month + 1,
              ),
            ),
          );
        },
        toggleCalendarEventType: (event) async {
          if (state.selectedCalendarEventTypes.contains(event.value)) {
            emit(
              state.copyWith(
                selectedCalendarEventTypes: Set.of(
                  state.selectedCalendarEventTypes,
                )..remove(
                  event.value,
                ),
              ),
            );
          } else {
            emit(
              state.copyWith(
                selectedCalendarEventTypes: Set.of(
                  state.selectedCalendarEventTypes,
                )..add(
                  event.value,
                ),
              ),
            );
          }

        },
        addEvent: (event) async {
          final matchingKey = state.events.keys.firstWhere(
                (key) => isSameDay(key, event.dateTime),
            orElse: () => event.dateTime, // 같은 날짜가 없으면 새로운 날짜 사용
          );

          final List<Event> events = [
            ...(state.events[matchingKey] ?? []),
            Event(
              dateTime: event.dateTime,
              content: event.content,
            ),
          ];

          final updatedEvents = LinkedHashMap<DateTime, List<Event>>.from(
            state.events,
          )..[matchingKey] = events;

          emit(
            state.copyWith(
              events: updatedEvents,
            ),
          );
        },
        editEvent: (event) async {
          // 날짜에 해당하는 키 찾기
          final matchingKey = state.events.keys.firstWhereOrNull(
                (key) => isSameDay(key, event.dateTime),
          );

          if (matchingKey != null) {
            // 해당 날짜의 이벤트 리스트를 수정된 이벤트로 대체
            final updatedEvents = LinkedHashMap<DateTime, List<Event>>.from(
              state.events,
            )..[matchingKey] = [
              Event(
                dateTime: event.dateTime,
                content: event.content,
              ), // 대체할 이벤트
            ];

            emit(
              state.copyWith(
                events: updatedEvents,
              ),
            );
          }
        },
      );
    });
  }
}
