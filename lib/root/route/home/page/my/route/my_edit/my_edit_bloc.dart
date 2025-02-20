import 'dart:collection';

import 'package:app/app/app.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/model/local/event.dart';
import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:table_calendar/table_calendar.dart';

part 'my_edit_event.dart';
part 'my_edit_state.dart';
part 'my_edit_bloc.freezed.dart';

class MyEditBloc extends Bloc<MyEditEvent, MyEditState> {
  MyEditBloc(
      {required String initialNickName, required String initialIntroText})
      : textEditingControllerNickName =
            TextEditingController(text: initialNickName),
        textEditingControllerDescription = TextEditingController(
          text: initialIntroText,
        ),
        super(const MyEditState()) {
    on<MyEditEvent>((event, emit) async {
      await event.map(
        mock: (event) async {},
      );
    });
  }

  final TextEditingController textEditingControllerNickName;
  final TextEditingController textEditingControllerDescription;
}
