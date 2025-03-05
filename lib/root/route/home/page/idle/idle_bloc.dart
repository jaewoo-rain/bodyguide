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
    // loadState();
    on<IdleEvent>((event, emit) async {
      await event.map(
          mock: (event) async {},
          loadState: (event) async {
            loadState();
          },
          updateWeight: (event) async {
            print('체중 업데이트 감지: ${event.weight}kg');

            // 기존 weight 값과 다를 때만 변경
            emit(state.copyWith(weight: event.weight));
            print(state.weight);
          });
    });
  }

  Future<void> loadState() async {
    try {
      final apiManager =
          ApiRequestManager(dio: Dio(), tokenManager: TokenManager());

      print('홈화면 데이터 불러오기1');

      final results = await apiManager.multiGetRequest(paths: [
        'exercise/volume/daily',
        'weight/record',
      ], params: [
        {"page": 0, "size": 1},
        {"page": 0, "size": 1}
      ], failRoute: Routes.sign.path);
      // print(
      //     'volume : ${results['exercise/volume/daily']['volumes'][0]['volume']}');
      // print(
      //     'weight : ${results['weight/record']['weightRecordList'][0]['weight']}');
      if (results.containsKey('error')) {
        print('API 호출 실패: ${results['message']}');
      } else {
        print("idle");

        // results에서 필요한 값을 추출하여 state 업데이트
        final weightRecordList = results['weight/record']?['weightRecordList'];
        final volumeList = results['exercise/volume/daily']?['volumes'];

        final double weight =
            (weightRecordList is List && weightRecordList.isNotEmpty)
                ? (weightRecordList[0]['weight'] as double)
                : 0.0;
        final double volume = (volumeList is List && volumeList.isNotEmpty)
            ? (volumeList[0]['volume'] as double)
            : 0.0;

        emit(state.copyWith(
          weight: weight,
          volume: volume,
        ));

        debugPrint('Idle 불러오기: $results', wrapWidth: 1024);
      }
    } catch (e, stackTrace) {
      print('Error: $e');
    }
  }
}
