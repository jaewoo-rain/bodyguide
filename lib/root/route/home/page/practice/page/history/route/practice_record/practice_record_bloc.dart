import 'package:app/app/constant/values.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/model/local/practice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'practice_record_event.dart';
part 'practice_record_state.dart';
part 'practice_record_bloc.freezed.dart';

class PracticeRecordBloc
    extends Bloc<PracticeRecordEvent, PracticeRecordState> {
  PracticeRecordBloc()
      : textEditingController = TextEditingController(),
        focusNode = FocusNode(),
        super(const PracticeRecordState()) {
    on<PracticeRecordEvent>((event, emit) async {
      await event.map(
        selectPracticeCategory: (event) async {
          // 카테고리 클릭
          print('이벤트 selectPracticeCategory');
          emit(
            state.copyWith(
              selectedPracticeCategory: event.value,
            ),
          );
        },
        clearPracticeCategory: (event) {
          print('이벤트 clearPracticeCategory');
          emit(
            state.copyWith(
              selectedPracticeCategory: null,
            ),
          );
        },
        selectPracticeItem: (event) {
          // 운동 클릭

          if (state.selectedPracticeItems.contains(event.value)) {
            print('이벤트 운동 아이템 클릭 if 문');
            emit(
              state.copyWith(
                selectedPracticeItems: Set.of(
                  state.selectedPracticeItems,
                )..remove(
                    event.value,
                  ),
              ),
            );
          } else {
            print('이벤트 운동 아이템 클릭 else 문');
            emit(
              state.copyWith(
                selectedPracticeItems: Set.of(
                  state.selectedPracticeItems,
                )..add(
                    event.value,
                  ),
              ),
            );
          }
        },
        onQueryChanged: (event) {
          print('이벤트 onQueryChanged');
          final String query = event.value.trim();

          emit(state.copyWith(
              query: query,
              searchedPracticeItems: practices.values
                  .expand(
                    (element) => element,
                  )
                  .toList()
                  .where(
                    (element) => element.name.startsWith(query),
                  )
                  .toSet()));
        },
      );
    });
  }

  final TextEditingController textEditingController;
  final FocusNode focusNode;
}
