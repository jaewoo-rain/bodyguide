import 'dart:collection';
import 'dart:convert';

import 'package:app/app/app.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/model/local/event.dart';
import 'package:app/root/route/home/page/my/my_bloc.dart';
import 'package:app/root/route/system/api_post_request_manager.dart';
import 'package:app/root/route/system/token_manager.dart';
import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../../../app/core/navigator_core.dart';

part 'my_edit_event.dart';
part 'my_edit_state.dart';
part 'my_edit_bloc.freezed.dart';

class MyEditBloc extends Bloc<MyEditEvent, MyEditState> {
  final MyBloc myBloc;
  MyEditBloc(
      {required String initialNickName,
      required String initialIntroText,
      required this.myBloc})
      : textEditingControllerNickName =
            TextEditingController(text: initialNickName),
        textEditingControllerDescription = TextEditingController(
          text: initialIntroText,
        ),
        super(const MyEditState()) {
    on<MyEditEvent>((event, emit) async {
      await event.map(
        mock: (event) async {},
        submit: (event) async {
          print("프로필 업데이트 시작");
          try {
            final dio = Dio();
            final tokenManager = TokenManager();
            final apiManager =
                ApiRequestManager(dio: dio, tokenManager: tokenManager);

            final requestBody = {
              "nickname": textEditingControllerNickName.text,
              "introText": textEditingControllerDescription.text
            };

            print('프로필 업데이트 요청 데이터 : ');
            print(jsonEncode(requestBody));

            // 요청 실행
            Map<String, dynamic> result = await apiManager.patchRequest(
              body: requestBody,
              path: 'user/profile',
              // successRoute: "",
              failRoute: Routes.myEdit.path,
            );

            if (result.containsKey('error')) {
              print("API 호출 실패: ${result['message']}");
            } else {
              print("API 호출 성공 프로필 업데이트");
              myBloc.add(MyEvent.refresh());
              App.instance.navigator.pop();
            }
          } catch (e) {
            print("알 수 없는 오류 발생: $e");
          }
        },
      );
    });
  }

  final TextEditingController textEditingControllerNickName;
  final TextEditingController textEditingControllerDescription;
}
