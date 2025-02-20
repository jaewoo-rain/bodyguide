import 'dart:convert';
import 'dart:ffi';

import 'package:app/app/app.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/model/local/exercise_request.dart';
import 'package:app/model/local/practice.dart';
import 'package:app/root/route/home/page/practice/page/history/practice_history_bloc.dart';
import 'package:app/root/route/system/api_post_request_manager.dart';
import 'package:app/root/route/system/token_manager.dart';
import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'practice_do_event.dart';
part 'practice_do_state.dart';
part 'practice_do_bloc.freezed.dart';

class PracticeDoBloc extends Bloc<PracticeDoEvent, PracticeDoState> {
  PracticeDoBloc({
    required List<Practice> practices,
  })  : textEditingControllers = List.generate(
          practices.length,
          (index) => List.generate(
            1,
            (index) => List.generate(
              2,
              (index) => TextEditingController(),
            ),
          ),
        ),
        super(PracticeDoState(
          records: practices
              .map(
                (element) => PracticeRecord(
                  prevBestWeight: 0,
                  prevBestRep: 0,
                  practice: element,
                  sets: List.generate(
                    1,
                    (index) => PracticeSet(
                      weight: '',
                      count: '',
                    ),
                  ),
                ),
              )
              .toList(),
        )) {
    on<PracticeDoEvent>((event, emit) async {
      await event.map(
        submit: (event) async {
          // print(state.records);
          // List<ExerciseSetRequest> sets = [];
          List<ExerciseRecordRequest> records = [];

          for (int i = 0; i < state.records.length; i++) {
            // print('${i + 1}번째 운동');
            List<ExerciseSetRequest> sets = [];

            for (int j = 0; j < state.records[i].sets.length - 1; j++) {
              // print('${i + 1}번째 운동의 ${j + 1} 세트');
              final set = ExerciseSetRequest(
                  set: j + 1,
                  weight: state.records[i].sets[j].weight.isEmpty
                      ? 0
                      : double.tryParse(state.records[i].sets[j].weight) ?? 0,
                  reps: int.parse(state.records[i].sets[j].count));
              sets.add(set);
            }
            final record = ExerciseRecordRequest(
                exerciseId: state.records[i].practice.exerciseId, sets: sets);
            records.add(record);
          }
          final groupRequest = ExerciseRecordGroupRequest(
            groupId: 0,
            // exerciseDate: DateTime.now(),
            exerciseDate: DateTime.now(),
            exercises: records,
          );

          try {
            final dio = Dio();
            final tokenManager = TokenManager();

            final apiManager = ApiRequestManager(
              dio: dio,
              tokenManager: tokenManager,
            );

            // 요청 데이터
            final requestBody = groupRequest.toJson();

            print('요청 데이터:');
            print(jsonEncode(requestBody));

            // 요청 실행
            await apiManager.postRequest(
              url: 'api.bodyguide.co.kr',
              body: requestBody,
              path: 'exercise/record',
              successRoute: Routes.home.path,
              failRoute: Routes.sign.path,
            );

            print('API 요청 성공');
          } on DioException catch (e) {
            print('DioException 발생: ${e.message}');

            if (e.response != null) {
              print('서버 응답 코드: ${e.response?.statusCode}');
              print('서버 응답 데이터: ${e.response?.data}');
            } else {
              print('서버 응답 없음 (네트워크 오류일 가능성)');
            }
          } catch (e) {
            print('알 수 없는 오류 발생: $e');
          }

          // if (isTrue) {
          //   App.instance.navigator.go(Routes.home.path);
          // } else {
          //   App.instance.navigator.go(Routes.sign.path);
          // }
        },
        onWeightChanged: (event) async {
          // print('이벤트 무게 변화 onWeightChanged');
          emit(
            state.copyWith(
              records: [
                ...state.records.take(
                  event.practiceIndex,
                ),
                state.records[event.practiceIndex].copyWith(
                  sets: [
                    ...state.records[event.practiceIndex].sets.take(
                      event.setIndex,
                    ),
                    state.records[event.practiceIndex].sets[event.setIndex]
                        .copyWith(
                      weight: event.value,
                    ),
                    ...state.records[event.practiceIndex].sets.skip(
                      event.setIndex + 1,
                    ),
                  ],
                ),
                ...state.records.skip(
                  event.practiceIndex + 1,
                ),
              ],
            ),
          );

          add(
            PracticeDoEvent.onChanged(
              practiceIndex: event.practiceIndex,
              setIndex: event.setIndex,
            ),
          );
        },
        onCountChanged: (event) async {
          // print('이벤트 세트변화 onCountChanged');
          emit(
            state.copyWith(
              records: [
                ...state.records.take(
                  event.practiceIndex,
                ),
                state.records[event.practiceIndex].copyWith(
                  sets: [
                    ...state.records[event.practiceIndex].sets.take(
                      event.setIndex,
                    ),
                    state.records[event.practiceIndex].sets[event.setIndex]
                        .copyWith(
                      count: event.value,
                    ),
                    ...state.records[event.practiceIndex].sets.skip(
                      event.setIndex + 1,
                    ),
                  ],
                ),
                ...state.records.skip(
                  event.practiceIndex + 1,
                ),
              ],
            ),
          );

          add(
            PracticeDoEvent.onChanged(
              practiceIndex: event.practiceIndex,
              setIndex: event.setIndex,
            ),
          );
        },
        onChanged: (event) async {
          final practice = state.records[event.practiceIndex].practice;
          final sets = state.records[event.practiceIndex].sets;

          // thresholdType이 1인 경우: weight와 count 모두 채워져야 함
          // thresholdType이 1이 아닌 경우: count만 채워져도 됨
          bool shouldAddNewSet = practice.thresholdType == 1
              ? sets.firstWhereOrNull((element) =>
                      (element.weight.isEmpty || element.count.isEmpty)) ==
                  null
              : sets.firstWhereOrNull((element) => element.count.isEmpty) ==
                  null;

          if (shouldAddNewSet) {
            textEditingControllers[event.practiceIndex].add(
              [
                TextEditingController(),
                TextEditingController(),
              ],
            );

            App.instance.log.d("ADD");

            emit(
              state.copyWith(
                records: [
                  ...state.records.take(event.practiceIndex),
                  state.records[event.practiceIndex].copyWith(
                    sets: [
                      ...state.records[event.practiceIndex].sets,
                      PracticeSet(weight: '', count: ''),
                    ],
                  ),
                  ...state.records.skip(event.practiceIndex + 1),
                ],
              ),
            );
          }
        },
        addPractices: (event) {
          // print('이벤트 addPractices');
          textEditingControllers.addAll(
            List.generate(
              event.practices.length,
              (index) => List.generate(
                1,
                (index) => List.generate(
                  2,
                  (index) => TextEditingController(),
                ),
              ),
            ),
          );

          emit(
            state.copyWith(
              records: [
                ...state.records,
                ...event.practices.map(
                  (element) => PracticeRecord(
                    prevBestRep: 0,
                    prevBestWeight: 0,
                    practice: element,
                    sets: List.generate(
                      1,
                      (index) => PracticeSet(
                        weight: '',
                        count: '',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        removePractices: (event) {
          // print('이벤트 removePractices');
          final List<List<List<TextEditingController>>>
              tempTextEditingControllers = List.of(
            textEditingControllers.whereIndexed(
              (index, element) => !event.practices.contains(index),
            ),
          );

          textEditingControllers
            ..clear()
            ..addAll(
              tempTextEditingControllers,
            );

          emit(
            state.copyWith(
              records: state.records
                  .asMap()
                  .entries
                  .where((entry) => !event.practices.contains(entry.key))
                  .map((entry) => entry.value)
                  .toList(),
            ),
          );
        },
      );
    });
  }

  final List<List<List<TextEditingController>>> textEditingControllers;
}
