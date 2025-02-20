import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/model/remote/custom_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'practice_analytics_input_event.dart';
part 'practice_analytics_input_state.dart';
part 'practice_analytics_input_bloc.freezed.dart';

class PracticeAnalyticsInputBloc
    extends Bloc<PracticeAnalyticsInputEvent, PracticeAnalyticsInputState> {
  PracticeAnalyticsInputBloc()
      : pageController = PageController(),
        textEditingControllerBenchPressWeight = TextEditingController(),
        textEditingControllerBenchPressCount = TextEditingController(),
        textEditingControllerSquatWeight = TextEditingController(),
        textEditingControllerSquatCount = TextEditingController(),
        textEditingControllerDeadLiftWeight = TextEditingController(),
        textEditingControllerDeadLiftCount = TextEditingController(),
        textEditingControllerOverHeadPressWeight = TextEditingController(),
        textEditingControllerOverHeadPressCount = TextEditingController(),
        textEditingControllerPushUpCount = TextEditingController(),
        textEditingControllerPullUpCount = TextEditingController(),

        focusNodeBenchPressWeight = FocusNode(),
        focusNodeBenchPressCount = FocusNode(),
        focusNodeSquatWeight = FocusNode(),
        focusNodeSquatCount = FocusNode(),
        focusNodeDeadLiftWeight = FocusNode(),
        focusNodeDeadLiftCount = FocusNode(),
        focusNodeOverHeadPressWeight = FocusNode(),
        focusNodeOverHeadPressCount = FocusNode(),
        focusNodePushUpCount = FocusNode(),
        focusNodePullUpCount = FocusNode(),
        super(
          const PracticeAnalyticsInputState(),
        ) {
    on<PracticeAnalyticsInputEvent>((event, emit) async {
      await event.map(
        onPageChanged: (event) async {
          emit(
            state.copyWith(
              page: event.value,
            ),
          );

          switch (state.page) {
            case PracticeAnalyticsInputPage.benchPress:
              focusNodeBenchPressWeight.requestFocus();
              break;

            case PracticeAnalyticsInputPage.squat:
              focusNodeSquatWeight.requestFocus();
              break;

            case PracticeAnalyticsInputPage.deadLift:
              focusNodeDeadLiftWeight.requestFocus();
              break;

            case PracticeAnalyticsInputPage.overHeadPress:
              focusNodeOverHeadPressWeight.requestFocus();
              break;

            case PracticeAnalyticsInputPage.pushUp:
              focusNodePushUpCount.requestFocus();
              break;

            case PracticeAnalyticsInputPage.pullUp:
              focusNodePullUpCount.requestFocus();
              break;
          }
        },
        onBenchPressWeightChanged: (event) async {
          emit(
            state.copyWith(
              benchPressWeight: event.value,
            ),
          );
        },
        onBenchPressCountChanged: (event) async {
          emit(
            state.copyWith(
              benchPressCount: event.value,
            ),
          );
        },
        onSquatWeightChanged: (event) async {
          emit(
            state.copyWith(
              squatWeight: event.value,
            ),
          );
        },
        onSquatCountChanged: (event) async {
          emit(
            state.copyWith(
              squatCount: event.value,
            ),
          );
          },
        onDeadLiftWeightChanged: (event) async {
          emit(
            state.copyWith(
              deadLiftWeight: event.value,
            ),
          );
        },
        onDeadLiftCountChanged: (event) async {
          emit(
            state.copyWith(
              deadLiftCount: event.value,
            ),
          );
        },
        onOverHeadPressWeightChanged: (event) async {
          emit(
            state.copyWith(
              overHeadPressWeight: event.value,
            ),
          );
        },
        onOverHeadPressCountChanged: (event) async {
          emit(
            state.copyWith(
              overHeadPressCount: event.value,
            ),
          );
        },
        onPushUpCountChanged: (event) async {
          emit(
            state.copyWith(
              pushUpCount: event.value,
            ),
          );
        },
        onPullUpCountChanged: (event) async {
          emit(
            state.copyWith(
              pullUpCount: event.value,
            ),
          );
        },

        submit: (event) async {
          App.instance.overlay.cover(
            on: true,
          );
        },
      );
    });
  }

  final PageController pageController;
  final TextEditingController textEditingControllerBenchPressWeight;
  final TextEditingController textEditingControllerBenchPressCount;
  final TextEditingController textEditingControllerSquatWeight;
  final TextEditingController textEditingControllerSquatCount;
  final TextEditingController textEditingControllerDeadLiftWeight;
  final TextEditingController textEditingControllerDeadLiftCount;
  final TextEditingController textEditingControllerOverHeadPressWeight;
  final TextEditingController textEditingControllerOverHeadPressCount;
  final TextEditingController textEditingControllerPushUpCount;
  final TextEditingController textEditingControllerPullUpCount;

  final FocusNode focusNodeBenchPressWeight;
  final FocusNode focusNodeBenchPressCount;
  final FocusNode focusNodeSquatWeight;
  final FocusNode focusNodeSquatCount;
  final FocusNode focusNodeDeadLiftWeight;
  final FocusNode focusNodeDeadLiftCount;
  final FocusNode focusNodeOverHeadPressWeight;
  final FocusNode focusNodeOverHeadPressCount;
  final FocusNode focusNodePushUpCount;
  final FocusNode focusNodePullUpCount;
}
