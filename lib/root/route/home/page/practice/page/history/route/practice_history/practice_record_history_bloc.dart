import 'package:app/app/constant/values.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/model/local/practice.dart';
import 'package:app/root/route/system/api_post_request_manager.dart';
import 'package:app/root/route/system/token_manager.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'practice_record_history_event.dart';
part 'practice_record_history_state.dart';
part 'practice_record_history_bloc.freezed.dart';

class PracticeRecordHistoryBloc
    extends Bloc<PracticeRecordHistoryEvent, PracticeRecordHistoryState> {
  PracticeRecordHistoryBloc() : super(
            // 기존 코드
            // PracticeRecordHistoryState(
            //   dateTime: DateTime.now(),
            // ),

            // loadPracticeRecord로 만들었을때 코드
            // PracticeRecordHistoryState(
            //   groupId: 0,
            //   exerciseDate: DateTime.now(),
            //   exercises: [],
            // ),

            //
            _initialState()) {
    _initializeState(DateTime.now().year, DateTime.now().month);
    on<PracticeRecordHistoryEvent>((event, emit) async {
      await event.map(
        loadPracticeRecord: (event) async {
          // _initializeState(
          //     DateTime.now().year, DateTime.now().month); // 페이지 이동시 다시 api 호출하기
        },
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
          emit(state.copyWith(
              currentTime: DateTime(
            (state.currentTime ?? DateTime.now()).year,
            (state.currentTime ?? DateTime.now()).month - 1,
            (state.currentTime ?? DateTime.now()).day,
          )));
          _initializeState(state.currentTime!.year, state.currentTime!.month);
        },
        nextMonth: (event) async {
          emit(state.copyWith(
              currentTime: DateTime(
            (state.currentTime ?? DateTime.now()).year,
            (state.currentTime ?? DateTime.now()).month + 1,
            (state.currentTime ?? DateTime.now()).day,
          )));
          _initializeState(state.currentTime!.year, state.currentTime!.month);
        },
      );
    });
  }

  // 초기 상태 반환 (API 호출 전 기본 상태)
  static PracticeRecordHistoryState _initialState() {
    return PracticeRecordHistoryState(
      currentPage: 0,
      pageSize: 0,
      hasNext: false,
      recordGroupList: [],
      currentTime: DateTime.now(),
    );
  }

  // 상태 초기화 (API 통신)
  void _initializeState(int year, int month) async {
    try {
      final apiManager =
          ApiRequestManager(dio: Dio(), tokenManager: TokenManager());

      final result = await apiManager.getRequest(
        path: 'exercise/record/month',
        params: {'year': year, 'month': month, 'page': 0, 'size': 10},
        // successRoute: Routes.practiceRecordHistory.path,
        failRoute: Routes.sign.path,
      );

      DateTime time = DateTime(year, month);

      // 정렬하기
      List<dynamic> recordGroupList = result['recordGroupList'];
      // exerciseDate를 기준으로 오름차순 정렬
      recordGroupList.sort((a, b) {
        DateTime dateA = DateTime.parse(a["exerciseDate"]);
        DateTime dateB = DateTime.parse(b["exerciseDate"]);
        return dateA.compareTo(dateB); // 오름차순 정렬
      });

      final initialState = PracticeRecordHistoryState(
        currentTime: time,
        currentPage: result['currentPage'] as int,
        pageSize: result['pageSize'] as int,
        hasNext: result['hasNext'] as bool,
        recordGroupList: (result['recordGroupList'] as List).map((group) {
          return RecordGroupList(
            groupId: group['groupId'] as int,
            exerciseDate: DateTime.parse(group['exerciseDate'] as String),
            exercises: (group['exercises'] as List).map((exercise) {
              return Exercise(
                exerciseId: exercise['exerciseId'] as int,
                prevBestWeight: (exercise['prevBestWeight'] as num).toDouble(),
                prevBestReps: exercise['prevBestReps'] as int,
                sets: (exercise['sets'] as List).map((set) {
                  return Set(
                    set: set['set'] as int,
                    weight: (set['weight'] as num).toDouble(),
                    reps: set['reps'] as int,
                    score: (set['score'] as num).toDouble(),
                    strength: (set['strength'] as num).toDouble(),
                  );
                }).toList(),
              );
            }).toList(),
          );
        }).toList(),
      );

      if (result.containsKey('error')) {
        print('API 호출 실패: ${result['message']}');
      } else {
        // print('API 호출 성공: $result');
        print('현재 월 : ${state.currentTime!.month}');
        debugPrint('API 호출 성공: $result',
            wrapWidth: 1024); // wrapWidth로 출력 길이 설정
      }

      emit(initialState);
    } catch (e, stackTrace) {
      print('Error: $e');
      emit(state.copyWith(hasNext: false));
    }
  }
}

// /////////////////////////////////////////////////
// final jsonData = /* API에서 받은 데이터 */ {
//   "currentPage": 0,
//   "pageSize": 0,
//   "hasNext": true,
//   "recordGroupList": [
//     // 날짜 구분
//     {
//       "groupId": 0,
//       "exerciseDate": "2025-01-22T08:32:23.518Z",
//       "exercises": [
//         // 운동 종류 구분
//         {
//           "exerciseId": 0,
//           "sets": [
//             // 운동 세트 구분
//             {
//               "set": 1,
//               "weight": 100,
//               "reps": 5,
//               "score": 10,
//               "strength": 0
//             },
//             {
//               "set": 2,
//               "weight": 200,
//               "reps": 15,
//               "score": 20,
//               "strength": 0
//             },
//           ],
//           "prevBestWeight": 0,
//           "prevBestReps": 0
//         }
//       ]
//     }
//   ]
// };
