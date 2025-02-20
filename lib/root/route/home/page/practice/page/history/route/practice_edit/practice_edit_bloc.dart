import 'package:app/app/app.dart';
import 'package:app/app/constant/values.dart';
import 'package:app/model/local/practice.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_do/practice_do_bloc.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'practice_edit_event.dart';
part 'practice_edit_state.dart';
part 'practice_edit_bloc.freezed.dart';

class PracticeEditBloc extends Bloc<PracticeEditEvent, PracticeEditState> {
  PracticeEditBloc({
    required List<PracticeRecord> practices,
  }) : super(
          PracticeEditState(
            practices: practices
                .map(
                  (e) => e.practice,
                )
                .toList(),
          ),
        ) {
    on<PracticeEditEvent>((event, emit) async {
      await event.map(
        toggle: (event) async {
          if (state.selections.contains(event.value)) {
            emit(
              state.copyWith(
                selections: List.of(
                  state.selections,
                )..remove(
                    event.value,
                  ),
              ),
            );
          } else {
            emit(
              state.copyWith(
                selections: List.of(
                  state.selections,
                )..add(
                    event.value,
                  ),
              ),
            );
          }
        },
      );
    });
  }
}
