import 'package:app/app/core/navigator_core.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/root/route/system/api_post_request_manager.dart';
import 'package:app/root/route/system/token_manager.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:preload_page_view/preload_page_view.dart';

part 'idle_event.dart';
part 'idle_state.dart';
part 'idle_bloc.freezed.dart';

class IdleBloc extends Bloc<IdleEvent, IdleState> {
  IdleBloc() : super(const IdleState()) {
    loadState();
    on<IdleEvent>((event, emit) async {
      await event.map(
        mock: (event) async {},
      );
    });
  }

  Future<void> loadState() async {
    try {
      final apiManager =
          ApiRequestManager(dio: Dio(), tokenManager: TokenManager());

      print('홈화면 데이터 불러오기');

      final results = await apiManager.multiGetRequest(
          url: 'api.bodyguide.co.kr',
          paths: [
            'exercise/volume/daily',
            'weight/record',
          ],
          params: [
            {"page": 0, "size": 1},
            {"page": 0, "size": 1}
          ],
          failRoute: Routes.sign.path);
      print(
          'volume : ${results['exercise/volume/daily']['volumes'][0]['volume']}');
      print(
          'weight : ${results['weight/record']['weightRecordList'][0]['weight']}');
      if (results.containsKey('error')) {
        print('API 호출 실패: ${results['message']}');
      } else {
        // results에서 필요한 값을 추출하여 state 업데이트
        emit(state.copyWith(
          weight: results['weight/record']['weightRecordList'][0]['weight']
              as double,
          volume: results['exercise/volume/daily']['volumes'][0]['volume']
              as double,
        ));
        debugPrint('Idle 불러오기: $results', wrapWidth: 1024);
      }
    } catch (e, stackTrace) {
      print('Error: $e');
    }
  }
}
