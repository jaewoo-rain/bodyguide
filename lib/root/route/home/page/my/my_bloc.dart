import 'package:app/app/core/navigator_core.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/root/route/system/api_post_request_manager.dart';
import 'package:app/root/route/system/token_manager.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:preload_page_view/preload_page_view.dart';

part 'my_event.dart';
part 'my_state.dart';
part 'my_bloc.freezed.dart';

class MyBloc extends Bloc<MyEvent, MyState> {
  MyBloc() : super(const MyState()) {
    on<MyEvent>((event, emit) async {
      await event.map(
        mock: (event) async {
          initializeState();
          print("마이 페이지 오픈");
        },
        refresh: (event) async {
          print('마이페이지 새로고침');
          initializeState();
        },
      );
    });
  }

  void initializeState() async {
    try {
      print('마이페이지 호출');
      final apiManager =
          ApiRequestManager(dio: Dio(), tokenManager: TokenManager());

      final results = await apiManager.multiGetRequest(
        paths: [
          'user/profile',
          'activity/profile',
          'exercise/performance',
          'exp/profile'
        ],
        params: [
          {},
          {},
          {},
          {},
        ],
        failRoute: Routes.sign.path,
      );

      if (results.containsKey('error')) {
        print('API 호출 실패: ${results['message']}');
      } else {
        // results에서 필요한 값을 추출하여 state 업데이트
        emit(state.copyWith(
          userProfile: results['user/profile'] as Map<String, dynamic>,
          activityProfile: results['activity/profile'] as Map<String, dynamic>,
          exercisePerformance:
              results['exercise/performance'] as Map<String, dynamic>,
          expProfile: results['exp/profile'] as Map<String, dynamic>,
        ));
        debugPrint('마이페이지 불러오기: $results', wrapWidth: 1024);
      }
    } catch (e, stackTrace) {
      print('Error: $e');
    }
  }
}
