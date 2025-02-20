import 'package:app/app/app.dart';
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

part 'practice_history_event.dart';
part 'practice_history_state.dart';
part 'practice_history_bloc.freezed.dart';

class PracticeHistoryBloc
    extends Bloc<PracticeHistoryEvent, PracticeHistoryState> {
  PracticeHistoryBloc() : super(PracticeHistoryState()) {
    print('운동 탭 등장');
    // initializeState();
    on<PracticeHistoryEvent>((event, emit) async {
      await event.map(
        loadPracticeRecord: (event) async {
          initializeState();
        },
        refresh: (event) async {
          print('새로고침 이벤트 실행');
          initializeState(); // 새로 API 호출하여 데이터를 갱신
        },
      );
    });
  }

  // 초기 상태 반환 (API 호출 전 기본 상태)
  static PracticeHistoryState _initialState() {
    return PracticeHistoryState(
      currentPage: 0,
      pageSize: 0,
      hasNext: false,
      recordGroupList: [],
      currentTime: DateTime.now(),
    );
  }

  // 상태 초기화 (API 통신)
  void initializeState() async {
    try {
      final apiManager =
          ApiRequestManager(dio: Dio(), tokenManager: TokenManager());

      print('운동기록 페이지 호출');
      final result = await apiManager.getRequest(
        url: 'api.bodyguide.co.kr',
        path: 'exercise/record/recentDay',
        params: {'days': 7, 'page': 0, 'size': 10},
        // successRoute: Routes.practiceRecordHistory.path,
        failRoute: Routes.sign.path,
      );
      // print('요청 받은데이터 : $result');
      // App.instance.navigator.go(Routes.home.path);
// 정렬하기
      List<dynamic> recordGroupList = result['recordGroupList'];
// exerciseDate를 기준으로 내림차순 정렬
      recordGroupList.sort((a, b) {
        DateTime dateA = DateTime.parse(a["exerciseDate"]);
        DateTime dateB = DateTime.parse(b["exerciseDate"]);
        return dateB.compareTo(dateA); // 내림차순 정렬
      });

      final initialState = PracticeHistoryState(
        currentTime: DateTime.now(),
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
                  return Sets(
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
        emit(initialState);
        debugPrint('7일 불러오기: $result', wrapWidth: 1024); // wrapWidth로 출력 길이 설정
      }
    } catch (e, stackTrace) {
      print('Error: $e');
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
