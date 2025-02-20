import 'package:app/app/constant/values.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/model/local/practice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrient_record_history_event.dart';
part 'nutrient_record_history_state.dart';
part 'nutrient_record_history_bloc.freezed.dart';

class NutrientRecordHistoryBloc
    extends Bloc<NutrientRecordHistoryEvent, NutrientRecordHistoryState> {
  NutrientRecordHistoryBloc()
      : super(
          NutrientRecordHistoryState(
            dateTime: DateTime.now(),
          ),
        ) {
    on<NutrientRecordHistoryEvent>((event, emit) async {
      await event.map(
        togglePracticeCategory: (event) {
          if (state.selectedPracticeCategory == event.value) {
            emit(
              state.copyWith(
                selectedPracticeCategory: null,
              ),
            );
          } else {
            emit(
              state.copyWith(
                selectedPracticeCategory: event.value,
              ),
            );
          }
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
      );
    });
  }
}
