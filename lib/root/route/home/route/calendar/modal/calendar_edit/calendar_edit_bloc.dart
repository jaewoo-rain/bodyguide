import 'package:app/app/misc/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_edit_event.dart';
part 'calendar_edit_state.dart';
part 'calendar_edit_bloc.freezed.dart';

class CalendarEditBloc extends Bloc<CalendarEditEvent, CalendarEditState> {
  CalendarEditBloc({
    required String content,
})
      : textEditingController = TextEditingController(
    text: content,
  ),
        super(
    CalendarEditState(
      content: content,
    ),
  ) {
    on<CalendarEditEvent>((event, emit) async {
      await event.map(
        onContentChanged: (event) async {
          emit(
            state.copyWith(
              content: event.value,
            ),
          );
        },
      );
    });
  }

  final TextEditingController textEditingController;
}
