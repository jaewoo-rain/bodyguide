import 'dart:convert';

import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/model/remote/custom_user.dart';
import 'package:app/root/route/system/api_post_request_manager.dart';
import 'package:app/root/route/system/secure_storage_manager.dart';
import 'package:app/root/route/system/token_manager.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'onboard_event.dart';
part 'onboard_state.dart';
part 'onboard_bloc.freezed.dart';

class OnboardBloc extends Bloc<OnboardEvent, OnboardState> {
  OnboardBloc()
      : pageController = PageController(),
        textEditingControllerNickName = TextEditingController(),
        textEditingControllerYear = TextEditingController(),
        textEditingControllerMonth = TextEditingController(),
        textEditingControllerDay = TextEditingController(),
        textEditingControllerHeight = TextEditingController(),
        textEditingControllerWeight = TextEditingController(),
        focusNodeNickName = FocusNode(),
        focusNodeYear = FocusNode(),
        focusNodeMonth = FocusNode(),
        focusNodeDay = FocusNode(),
        focusNodeHeight = FocusNode(),
        focusNodeWeight = FocusNode(),
        super(
          const OnboardState(),
        ) {
    on<OnboardEvent>((event, emit) async {
      await event.map(
        loadData: (evnet) async {
          // final storageManager = SecureStorageManager();
          // final accessToken = await storageManager.getAccessToken();
          // final refreshToken = await storageManager.getRefreshToken();
          // print("accessToken : $accessToken");
        },
        onPageChanged: (event) async {
          emit(
            state.copyWith(
              page: event.value,
            ),
          );

          switch (state.page) {
            case OnboardPage.nickName:
              focusNodeNickName.requestFocus();
              break;

            case OnboardPage.birth:
              focusNodeYear.requestFocus();
              break;

            case OnboardPage.spec:
              focusNodeHeight.requestFocus();
              break;

            case OnboardPage.gender:
            case OnboardPage.inflowSource:
            case OnboardPage.notification:
              focusNodeNickName.unfocus();
              focusNodeYear.unfocus();
              focusNodeMonth.unfocus();
              focusNodeDay.unfocus();
              focusNodeHeight.unfocus();
              focusNodeWeight.unfocus();
              break;
          }
        },
        onNickNameChanged: (event) async {
          emit(
            state.copyWith(
              nickName: event.value,
            ),
          );
        },
        onGenderChanged: (event) async {
          emit(
            state.copyWith(
              gender: event.value,
            ),
          );
        },
        onYearChanged: (event) async {
          try {
            final int value = int.parse(
              event.value,
            );

            if ((1899 < value) && (value <= DateTime.now().year)) {
              emit(
                state.copyWith(
                  year: value,
                ),
              );
            } else {
              throw Exception();
            }
          } catch (exception) {
            emit(
              state.copyWith(
                year: null,
              ),
            );
          }
        },
        onMonthChanged: (event) async {
          try {
            final int value = int.parse(
              event.value,
            );

            if ((0 < value) && (value <= 12)) {
              emit(
                state.copyWith(
                  month: value,
                ),
              );
            } else {
              throw Exception();
            }
          } catch (exception) {
            emit(
              state.copyWith(
                month: null,
              ),
            );
          }
        },
        onDayChanged: (event) async {
          try {
            final int value = int.parse(
              event.value,
            );

            if ((0 < value) && (value <= 31)) {
              emit(
                state.copyWith(
                  day: value,
                ),
              );
            } else {
              throw Exception();
            }
          } catch (exception) {
            emit(
              state.copyWith(
                day: null,
              ),
            );
          }
        },
        onHeightChanged: (event) async {
          emit(
            state.copyWith(
              height: event.value,
            ),
          );
        },
        onWeightChanged: (event) async {
          emit(
            state.copyWith(
              weight: event.value,
            ),
          );
        },
        onInflowRoutePressed: (event) async {
          emit(
            state.copyWith(
              inflowSource: event.value,
            ),
          );

          pageController.nextPage(
            duration: defaultAnimationDuration,
            curve: defaultAnimationCurve,
          );
        },
        submit: (event) async {
          App.instance.overlay.cover(
            on: true,
          );
          print('제출 클릭');

          //////////////////////////////////////////////
          final dio = Dio();
          final tokenManager = TokenManager();

          final apiManager = ApiRequestManager(
            dio: dio,
            tokenManager: tokenManager,
          );

          // 요청 데이터
          final requestBody = {
            "nickname": state.nickName,
            "gender": state.gender == Gender.female ? "F" : "M",
            "height": state.height,
            "weight": state.weight,
            "birthDate": "${state.year}-${(state.month ?? 0).toString().padLeft(2, '0')}-${(state.day ?? 0).toString().padLeft(2, '0')}",
            "Source": state.inflowSource,
          };


          // 요청 실행
          // bool isTrue =
          print('온보딩 post 호출');
          await apiManager.postRequest(
            body: requestBody,
            path: 'auth/initialize',
            successRoute: Routes.home.path,
            failRoute: Routes.onboard.path,
          );
          print('온보딩 post 완료');

          // if (isTrue) {
          //   App.instance.navigator.go(Routes.home.path);
          // } else {
          //   App.instance.navigator.go(Routes.sign.path);
          // }

          // ////////////////////
          // final tokenManager = TokenManager();
          //
          // final dio = Dio();
          //
          // // 토큰 검사
          // final validAccessToken = await tokenManager.getValidAccessToken();
          //
          // var requestBody = {
          //   "nickname": "${state.nickName}",
          //   "gender": state.gender == Gender.female ? "F" : "M",
          //   "height": state.height,
          //   "weight": state.weight,
          //   "birthDate": "${state.year}-${state.month}-${state.day}",
          //   "Source": "${state.inflowSource}"
          // };
          //
          // if (validAccessToken != null) {
          //   print('유효한 Access Token: $validAccessToken');
          //   try {
          //     // 통신 코드
          //     final url = 'api.bodyguide.co.kr';
          //
          //     final response = await dio.post(
          //       'https://$url/auth/initialize',
          //       options: Options(headers: {
          //         'authorization': 'Bearer $validAccessToken',
          //         'Content-Type': 'application/json',
          //       }),
          //       data: requestBody,
          //     );
          //     // 통신 성공
          //     print('응답 데이터: ${response.data}');
          //
          //     // 토큰 저장하기?
          //     // final Map<dynamic, dynamic> tokenData = response.data;
          //     //
          //     // final accessToken = tokenData['accessToken'];
          //     // final refreshToken = tokenData['refreshToken'];
          //     //
          //     // final storageManager = SecureStorageManager();
          //     // await storageManager.saveAccessToken(accessToken);
          //     // await storageManager.saveRefreshToken(refreshToken);
          //
          //     App.instance.navigator.go(Routes.home.path);
          //   } catch (e) {
          //     if (e is DioError) {
          //       print('통신 오류: ${e.response?.statusCode}');
          //       print('오류 메시지: ${e.message}');
          //     } else {
          //       print('알 수 없는 오류: $e');
          //     }
          //   }
          // } else {
          //   print('로그인이 필요합니다.');
          //   // 로그인이 필요한 경우 처리
          //   App.instance.navigator.go(Routes.sign.path);
          // }
          // //////////////////////////////////
          //
          // App.instance.overlay.cover(
          //   on: false,
          // );
          //////////////////////////////////////////////////////

          // 파이어 베이스
          // await FirebaseFirestore.instance
          //     .collection(
          //       'users',
          //     )
          //     .doc(
          //       App.instance.auth.customUser?.documentId,
          //     )
          //     .update(
          //   {
          //     'baseInfo': BaseInfo(
          //       nickName: state.nickName,
          //       gender: state.gender!,
          //       birth: DateTime(
          //         state.year!,
          //         state.month!,
          //         state.day!,
          //       ),
          //       inflowRoute: state.inflowSource,
          //     ).toJson(),
          //   },
          // ).then(
          //   (value) {
          //     //
          //   },
          // ).catchError(
          //   (error) {
          //     //
          //     App.instance.log.d(error);
          //     App.instance.overlay.cover(
          //       on: false,
          //     );
          //   },
          // );
        },
      );
    });
  }

  bool isValidNickName({
    required String value,
  }) =>
      value.isNotEmpty;
  bool isValidGender({
    required Gender? value,
  }) =>
      (value != null);
  bool isValidYear({
    required int? value,
  }) =>
      (value != null);
  bool isValidMonth({
    required int? value,
  }) =>
      (value != null);
  bool isValidDay({
    required int? value,
  }) =>
      (value != null);
  bool isValidBirth({
    required int? year,
    required int? month,
    required int? day,
  }) {
    if ((year != null) && (month != null) && (day != null)) {
      final DateTime dateTime = DateTime(year, month, day);

      return (dateTime.year == year) &&
          (dateTime.month == month) &&
          (dateTime.day == day);
    } else {
      return false;
    }
  }

  bool isValidHeight({
    required String value,
  }) =>
      value.isNotEmpty;
  bool isValidWeight({
    required String value,
  }) =>
      value.isNotEmpty;
  bool isValidSpec({
    required String height,
    required String weight,
  }) =>
      height.isNotEmpty && weight.isNotEmpty;

  final PageController pageController;
  final TextEditingController textEditingControllerNickName;
  final TextEditingController textEditingControllerYear;
  final TextEditingController textEditingControllerMonth;
  final TextEditingController textEditingControllerDay;
  final TextEditingController textEditingControllerHeight;
  final TextEditingController textEditingControllerWeight;

  final FocusNode focusNodeNickName;
  final FocusNode focusNodeYear;
  final FocusNode focusNodeMonth;
  final FocusNode focusNodeDay;
  final FocusNode focusNodeHeight;
  final FocusNode focusNodeWeight;
}
