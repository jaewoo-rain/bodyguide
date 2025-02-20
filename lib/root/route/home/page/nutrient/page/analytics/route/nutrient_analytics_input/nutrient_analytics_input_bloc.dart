import 'package:app/app/app.dart';
import 'package:app/app/misc/enums.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrient_analytics_input_event.dart';
part 'nutrient_analytics_input_state.dart';
part 'nutrient_analytics_input_bloc.freezed.dart';

class NutrientAnalyticsInputBloc
    extends Bloc<NutrientAnalyticsInputEvent, NutrientAnalyticsInputState> {
  NutrientAnalyticsInputBloc()
      : pageController = PageController(),
        textEditingControllerCurrentWeight = TextEditingController(),
        textEditingControllerGoalWeight = TextEditingController(),
        textEditingControllerCalorieValue = TextEditingController(),
        textEditingControllerCalorieDuration = TextEditingController(),
        textEditingControllerCarbohydrate = TextEditingController(),
        textEditingControllerProtein = TextEditingController(),
        textEditingControllerFat = TextEditingController(),
        textEditingControllerGetUpHour = TextEditingController(),
        textEditingControllerGetUpMinute = TextEditingController(),
        textEditingControllerSleepHour = TextEditingController(),
        textEditingControllerSleepMinute = TextEditingController(),

        focusNodeCurrentWeight = FocusNode(),
        focusNodeGoalWeight = FocusNode(),
        focusNodeCalorieValue = FocusNode(),
        focusNodeCalorieDuration = FocusNode(),
        focusNodeCarbohydrate = FocusNode(),
        focusNodeProtein = FocusNode(),
        focusNodeFat = FocusNode(),
        focusNodeGetUpHour = FocusNode(),
        focusNodeGetUpMinute = FocusNode(),
        focusNodeSleepHour = FocusNode(),
        focusNodeSleepMinute = FocusNode(),
        super(
          const NutrientAnalyticsInputState(),
        ) {
    on<NutrientAnalyticsInputEvent>((event, emit) async {
      await event.map(
        onPageChanged: (event) async {
          emit(
            state.copyWith(
              page: event.value,
            ),
          );

          switch (state.page) {
            case NutrientAnalyticsInputPage.currentWeight:
              focusNodeCurrentWeight.requestFocus();
              break;

            case NutrientAnalyticsInputPage.goalWeight:
              focusNodeGoalWeight.requestFocus();
              break;

            case NutrientAnalyticsInputPage.calorie:
              focusNodeCalorieValue.requestFocus();
              break;

            // case NutrientAnalyticsInputPage.menuRatio:
            //   focusNodeCarbohydrate.requestFocus();
            //   break;

            case NutrientAnalyticsInputPage.getUp:
              focusNodeGetUpHour.requestFocus();
              break;

            case NutrientAnalyticsInputPage.sleep:
              focusNodeSleepHour.requestFocus();
              break;

            default:
          }
        },
        onSelectLifePattern: (event) {
          emit(
            state.copyWith(
              lifePattern: event.value,
            ),
          );
        },
        onCurrentWeightChanged: (event) async {
          emit(
            state.copyWith(
              currentWeight: event.value,
            ),
          );
        },
        onGoalWeightChanged: (event) async {
          emit(
            state.copyWith(
              goalWeight: event.value,
            ),
          );
        },
        onCalorieValueChanged: (event) async {
          emit(
            state.copyWith(
              calorieValue: event.value,
            ),
          );
        },
        onCalorieDurationChanged: (event) async {
          emit(
            state.copyWith(
              calorieDuration: event.value,
            ),
          );
        },
        onSelectMenuType: (event) {
          emit(
            state.copyWith(
              menuType: event.value,
            ),
          );
        },
        onCarbohydrateChanged: (event) async {
          emit(
            state.copyWith(
              carbohydrate: event.value,
            ),
          );
        },
        onProteinChanged: (event) async {
          emit(
            state.copyWith(
              protein: event.value,
            ),
          );
        },
        onFatChanged: (event) async {
          emit(
            state.copyWith(
              fat: event.value,
            ),
          );
        },
        onGetUpHourChanged: (event) async {
          emit(
            state.copyWith(
              getUpHour: event.value,
            ),
          );
        },
        onGetUpMinuteChanged: (event) async {
          emit(
            state.copyWith(
              getUpMinute: event.value,
            ),
          );
        },
        onSleepHourChanged: (event) async {
          emit(
            state.copyWith(
              sleepHour: event.value,
            ),
          );
        },
        onSleepMinuteChanged: (event) async {
          emit(
            state.copyWith(
              sleepMinute: event.value,
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
  final TextEditingController textEditingControllerCurrentWeight;
  final TextEditingController textEditingControllerGoalWeight;
  final TextEditingController textEditingControllerCalorieValue;
  final TextEditingController textEditingControllerCalorieDuration;
  final TextEditingController textEditingControllerCarbohydrate;
  final TextEditingController textEditingControllerProtein;
  final TextEditingController textEditingControllerFat;
  final TextEditingController textEditingControllerGetUpHour;
  final TextEditingController textEditingControllerGetUpMinute;
  final TextEditingController textEditingControllerSleepHour;
  final TextEditingController textEditingControllerSleepMinute;

  final FocusNode focusNodeCurrentWeight;
  final FocusNode focusNodeGoalWeight;
  final FocusNode focusNodeCalorieValue;
  final FocusNode focusNodeCalorieDuration;
  final FocusNode focusNodeCarbohydrate;
  final FocusNode focusNodeProtein;
  final FocusNode focusNodeFat;
  final FocusNode focusNodeGetUpHour;
  final FocusNode focusNodeGetUpMinute;
  final FocusNode focusNodeSleepHour;
  final FocusNode focusNodeSleepMinute;
}
