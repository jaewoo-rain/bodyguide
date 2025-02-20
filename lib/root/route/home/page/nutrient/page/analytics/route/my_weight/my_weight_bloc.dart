import 'dart:convert';

import 'package:app/app/app.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/model/local/practice.dart';
import 'package:app/model/local/weight_record.dart';
import 'package:app/root/route/system/api_post_request_manager.dart';
import 'package:app/root/route/system/token_manager.dart';
import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

part 'my_weight_event.dart';
part 'my_weight_state.dart';
part 'my_weight_bloc.freezed.dart';

class MyWeightBloc extends Bloc<MyWeightEvent, MyWeightState> {
  MyWeightBloc()
      : textEditingController = TextEditingController(),
        maskTextInputFormatter = MaskTextInputFormatter(
          mask: '##.#kg',
          filter: {
            '#': RegExp(
              r'[0-9]',
            ),
          },
          type: MaskAutoCompletionType.eager,
        ),
        super(
          const MyWeightState(),
        ) {
    loadWeightRecords();

    on<MyWeightEvent>((event, emit) async {
      await event.map(
        delete: (record) async {
          print(record.record.historyId);
          print("state.records.first.id: ${state.records.first.historyId}");

          try {
            final apiManager =
                ApiRequestManager(dio: Dio(), tokenManager: TokenManager());

            print('${record.record.historyId}번 몸무게 삭제 호출');

            final result = await apiManager.deleteRequest(
              url: 'api.bodyguide.co.kr',
              path: 'weight/record',
              params: {'historyId': record.record.historyId.toInt()},
              failRoute: Routes.sign.path,
            );

            if (result['error'] == true) {
              print('API 호출 실패: ${result['message']}');
            } else {
              print('API 호출 성공: $result');

              // 🔹 API 성공 시에만 리스트에서 삭제하도록 변경
              final updatedRecords =
                  state.records.where((r) => r != record).toList();
              emit(state.copyWith(records: updatedRecords));

              debugPrint('🗑 삭제 완료: $result', wrapWidth: 1024);
            }
          } catch (e, stackTrace) {
            print('API 요청 중 오류 발생: $e');
          }
        },
        submit: (event) async {
          if (maskTextInputFormatter.isFill()) {
            textEditingController.clear();
            maskTextInputFormatter.clear();

            try {
              final dio = Dio();
              final tokenManager = TokenManager();

              final apiManager = ApiRequestManager(
                dio: dio,
                tokenManager: tokenManager,
              );

              // 요청 데이터
              final requestBody = {
                "weight": double.parse(state.input.replaceAll('kg', '')),
                "recordAt":
                    DateTime.now().toIso8601String(), // DateTime을 문자열로 변환
              };

              print('몸무게 요청 데이터:');
              print(jsonEncode(requestBody));

              // 요청 실행
              await apiManager.postRequest(
                url: 'api.bodyguide.co.kr',
                body: requestBody,
                path: 'weight/record',
                successRoute: "",
                failRoute: Routes.sign.path,
              );

              print('몸무게 API 요청 성공');
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

            emit(
              state.copyWith(
                records: List.of(
                  state.records,
                )..insert(
                    0,
                    WeightRecord(
                        value: double.parse(
                          state.input.replaceAll('kg', ''),
                        ),
                        date: DateTime.now(),
                        historyId: state.records.first.historyId + 1),
                  ),
                input: '',
              ),
            );
          }
        },
        onInputChanged: (event) async {
          emit(
            state.copyWith(
              input: event.value,
            ),
          );
        },
      );
    });
  }

  // void initState() async {
  //   try {
  //     print('몸무게 호출');
  //     final apiManager =
  //         ApiRequestManager(dio: Dio(), tokenManager: TokenManager());
  //
  //     bool hasNext = true;
  //     int page = 0;
  //     while (hasNext) {
  //       final result = await apiManager.getRequest(
  //         url: 'api.bodyguide.co.kr',
  //         path: 'weight/record',
  //         params: {'page': page, 'size': 10},
  //         // successRoute: Routes.practiceRecordHistory.path,
  //         failRoute: Routes.sign.path,
  //       );
  //       hasNext = result["hasNext"];
  //       page += 1;
  //       print(result["weightRecordList"]);
  //       List<Map<String, dynamic>> weightRecords =
  //           (result["weightRecordList"] as List<dynamic>)
  //               .map((e) => e as Map<String, dynamic>)
  //               .toList();
  //
  //       List<WeightRecord> results = [];
  //       for (Map<String, dynamic> record in weightRecords) {
  //         results.add(WeightRecord(
  //             value: record["weight"],
  //             date: DateTime.parse(record["recordDate"])));
  //       }
  //
  //       print(results);
  //
  //       if (result.containsKey('error')) {
  //         print('API 호출 실패: ${result['message']}');
  //       } else {
  //         // results에서 필요한 값을 추출하여 state 업데이트
  //         emit(
  //           state.copyWith(
  //             records: List.of(state.records)..addAll(results),
  //           ),
  //         );
  //         debugPrint('몸무게 불러오기: $result', wrapWidth: 1024);
  //       }
  //     }
  //   } catch (e, stackTrace) {
  //     print('Error: $e');
  //   }
  // }

  Future<void> loadWeightRecords() async {
    try {
      final apiManager =
          ApiRequestManager(dio: Dio(), tokenManager: TokenManager());

      print('몸무게 기록 호출 시작');
      bool hasNext = true;
      int page = 0;
      List<WeightRecord> allRecords = []; // 모든 데이터를 담을 리스트

      while (hasNext) {
        final result = await apiManager.getRequest(
          url: 'api.bodyguide.co.kr',
          path: 'weight/record',
          params: {'page': page, 'size': 10},
          failRoute: Routes.sign.path,
        );

        if (result.containsKey('error')) {
          print('API 호출 실패: ${result['message']}');
          break;
        }

        hasNext = result["hasNext"];
        page = result["currentPage"] + 1;

        List<Map<String, dynamic>> weightRecords =
            (result["weightRecordList"] as List<dynamic>)
                .map((e) => e as Map<String, dynamic>)
                .toList();

        print("weightRecords $weightRecords");

        List<WeightRecord> results = weightRecords
            .map((record) => WeightRecord(
                value: record["weight"],
                date: DateTime.parse(record["recordDate"]),
                historyId: record["historyId"]))
            .toList();

        allRecords.addAll(results);
      }

      // 최종적으로 `emit`을 한 번만 호출하여 성능 개선
      emit(state.copyWith(records: List.of(state.records)..addAll(allRecords)));

      debugPrint('몸무게 기록 불러오기 완료: ${allRecords.length}개', wrapWidth: 1024);
    } on DioException catch (e) {
      print('API 오류 발생: ${e.message}');
      if (e.response != null) {
        print('서버 응답 코드: ${e.response?.statusCode}');
        print('서버 응답 데이터: ${e.response?.data}');
      }
    } catch (e, stackTrace) {
      print('알 수 없는 오류 발생: $e');
      print(stackTrace);
    }
  }

  final TextEditingController textEditingController;
  final MaskTextInputFormatter maskTextInputFormatter;
}
