import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/app/misc/extensions.dart';
import 'package:app/root/route/home/page/nutrient/page/analytics/route/nutrient_analytics_input/nutrient_analytics_input_bloc.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_input/practice_analytics_input_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:byson_switcher/byson_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class NutrientAnalyticsInputRoute extends StatelessWidget {
  const NutrientAnalyticsInputRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => NutrientAnalyticsInputBloc(),
        child: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(
              toolbarHeight: 0,
              backgroundColor: Colors.white.withOpacity(
                0,
              ),
              surfaceTintColor: Colors.white.withOpacity(
                0,
              ),
              automaticallyImplyLeading: false,
              scrolledUnderElevation: 0,
              elevation: 0,
              systemOverlayStyle: systemUiOverlayStyleDark,
            ),
            backgroundColor: const Color(
              0xFFF1F1F5,
            ),
            body: Column(
              children: [
                BysonAspectRatio(
                  designWidth: designWidth,
                  designHeight: 56 + 16 + 8,
                  builder: (converter) => Stack(
                    children: [
                      PositionedDirectional(
                        start: 0,
                        end: 0,
                        top: converter.h(
                          14,
                        ),
                        height: converter.h(
                          28,
                        ),
                        child: Center(
                          child: Text(
                            '섭취정보 입력',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.5,
                              fontSize: converter.h(
                                20,
                              ),
                              color: const Color(
                                0xFF111111,
                              ),
                              fontWeight: FontWeightAlias.regular,
                              letterSpacing: converter.w(
                                -0.4,
                              ),
                            ),
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        bottom: 0,
                        start: converter.w(
                          20,
                        ),
                        end: converter.w(
                          20,
                        ),
                        height: converter.h(
                          8,
                        ),
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          margin: EdgeInsets.zero,
                          color: const Color(
                            0xFFE5E5EC,
                          ),
                          surfaceTintColor: const Color(
                            0xFFE5E5EC,
                          ),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              converter.radius(
                                16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        bottom: 0,
                        start: converter.w(
                          20,
                        ),
                        end: converter.w(
                          20,
                        ),
                        height: converter.h(
                          8,
                        ),
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          margin: EdgeInsets.zero,
                          color: const Color(
                            0xFFE5E5EC,
                          ),
                          surfaceTintColor: const Color(
                            0xFFE5E5EC,
                          ),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              converter.radius(
                                16,
                              ),
                            ),
                          ),
                          child: BlocBuilder<NutrientAnalyticsInputBloc,
                              NutrientAnalyticsInputState>(
                            buildWhen: (previous, current) =>
                                (previous.page != current.page),
                            builder: (context, state) => Align(
                              alignment: Alignment.centerLeft,
                              child: AnimatedContainer(
                                duration: defaultAnimationDuration,
                                curve: defaultAnimationCurve,
                                decoration: BoxDecoration(
                                  color: const Color(
                                    0xFF3D5DD3,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    converter.radius(
                                      16,
                                    ),
                                  ),
                                ),
                                width: converter.w(
                                  (335 *
                                          ((state.page.index + 1) /
                                              NutrientAnalyticsInputPage
                                                  .values.length))
                                      .toDouble(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        top: 0,
                        start: 0,
                        height: converter.h(
                          56,
                        ),
                        width: converter.h(
                          56,
                        ),
                        child: BlocBuilder<NutrientAnalyticsInputBloc, NutrientAnalyticsInputState>(
                          buildWhen: (previous, current) => (previous.page != current.page),
                          builder: (context, state) => BysonCupertinoButton.solid(
                            onPressed: () => switch (state.page) {
                              NutrientAnalyticsInputPage.lifePattern => App.instance.navigator.pop(),
                              _ => context.read<NutrientAnalyticsInputBloc>().pageController.previousPage(
                                duration: defaultAnimationDuration,
                                curve: defaultAnimationCurve,
                              )
                            },
                            child: Center(
                              child: Icon(
                                IconsaxPlusLinear.arrow_left,
                                color: Colors.black,
                                size: converter.h(
                                  24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: PageView(
                    controller: context
                        .read<NutrientAnalyticsInputBloc>()
                        .pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    onPageChanged: (value) => context
                        .read<NutrientAnalyticsInputBloc>()
                        .add(
                      NutrientAnalyticsInputEvent.onPageChanged(
                        value: NutrientAnalyticsInputPage.values.elementAt(
                          value,
                        ),
                      ),
                    ),
                    children: [
                      Column(
                        children: [
                          BysonAspectRatio.padding(
                            designWidth: designWidth,
                            designHeight: 40 + 110,
                            designPadding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            builder: (converter) => Stack(
                              children: [
                                PositionedDirectional(
                                  start: 0,
                                  end: 0,
                                  top: converter.h(
                                    40,
                                  ),
                                  height: converter.h(
                                    52,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '왕근육민석 님의\n평상시 생활에 대해 알려주세요.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        height: 1.2,
                                        fontSize: converter.h(
                                          22,
                                        ),
                                        color: const Color(
                                          0xFF111111,
                                        ),
                                        fontWeight: FontWeightAlias.semiBold,
                                        letterSpacing: converter.lt(
                                          fontSize: 22,
                                          percent: -2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                PositionedDirectional(
                                  start: 0,
                                  end: 0,
                                  top: converter.h(
                                    108,
                                  ),
                                  height: converter.h(
                                    42,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '입력된 정보로 영양 정보를 분석해드려요!\n수집된 정보는 외부에 공개되지 않아요.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        height: 1.5,
                                        fontSize: converter.h(
                                          14,
                                        ),
                                        color: const Color(
                                          0xFF888888,
                                        ),
                                        fontWeight: FontWeightAlias.regular,
                                        letterSpacing: converter.w(
                                          -2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: BlocBuilder<NutrientAnalyticsInputBloc, NutrientAnalyticsInputState>(
                              buildWhen: (previous, current) => (previous.lifePattern != current.lifePattern),
                              builder: (context, state) => ListView.separated(
                                itemCount: LifePattern.values.length,
                                padding: EdgeInsets.symmetric(
                                  vertical: App.instance.overlay.relativeScreenHeight(
                                    56,
                                  ),
                                ),
                                separatorBuilder: (context, index) => const BysonSeparator(
                                  designWidth: designWidth,
                                  designHeight: 16,
                                ),
                                itemBuilder: (context, index) => BysonAspectRatio.padding(
                                  designWidth: designWidth,
                                  designHeight: 80,
                                  designPadding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  builder: (converter) =>
                                      BysonCupertinoButton.outlinedSolid(
                                        onPressed: () => context.read<NutrientAnalyticsInputBloc>().add(
                                          NutrientAnalyticsInputEvent.onSelectLifePattern(
                                            value: LifePattern.values[index],
                                          ),
                                        ),
                                        color: switch (
                                        LifePattern.values[index] == state.lifePattern) {
                                          true => const Color(
                                            0xFFF1F5FD,
                                          ),
                                          false => Colors.white,
                                        },
                                        border: switch (
                                        LifePattern.values[index] == state.lifePattern) {
                                          true => Border.all(
                                            color: const Color(
                                              0xFF3D5DD3,
                                            ),
                                            width: converter.h(
                                              1,
                                            ),
                                          ),
                                          false => Border.all(
                                            color: const Color(
                                              0xFFE5E5EC,
                                            ),
                                            width: converter.h(
                                              1,
                                            ),
                                          ),
                                        },
                                        borderRadius: BorderRadius.all(
                                          converter.radius(
                                            8,
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            PositionedDirectional(
                                              top: converter.h(
                                                16,
                                              ),
                                              start: 0,
                                              end: 0,
                                              height: converter.h(
                                                27,
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  LifePattern.values[index].title,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    height: 1.5,
                                                    fontSize: converter.h(
                                                      18,
                                                    ),
                                                    color: const Color(
                                                      0xFF111111,
                                                    ),
                                                    fontWeight:
                                                    FontWeightAlias.semiBold,
                                                    letterSpacing: converter.lt(
                                                      fontSize: 18,
                                                      percent: -2,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            PositionedDirectional(
                                              bottom: converter.h(
                                                16,
                                              ),
                                              start: 0,
                                              end: 0,
                                              height: converter.h(
                                                18,
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  LifePattern.values[index].subTitle,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    height: 1.5,
                                                    fontSize: converter.h(
                                                      14,
                                                    ),
                                                    color: const Color(
                                                      0xFF111111,
                                                    ),
                                                    fontWeight: FontWeightAlias.regular,
                                                    letterSpacing: converter.lt(
                                                      fontSize: 14,
                                                      percent: -2,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: BysonAspectRatio.padding(
                          designWidth: designWidth,
                          designHeight: 225,
                          designPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          builder: (converter) => Stack(
                            children: [
                              PositionedDirectional(
                                start: 0,
                                end: 0,
                                top: 0,
                                height: converter.h(
                                  68,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '왕근육민석 님의\n현재 체중에 대해 알려주세요.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: converter.h(
                                        28,
                                      ),
                                      color: const Color(
                                        0xFF111111,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                start: 0,
                                end: 0,
                                top: converter.h(
                                  84,
                                ),
                                height: converter.h(
                                  42,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '입력된 정보로 영양 정보를 분석해드려요!\n수집된 정보는 외부에 공개되지 않아요.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: converter.h(
                                        14,
                                      ),
                                      color: const Color(
                                        0xFF888888,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                start: 0,
                                width: converter.w(
                                  160,
                                ),
                                bottom: 0,
                                height: converter.h(
                                  51,
                                ),
                                child: BlocBuilder<NutrientAnalyticsInputBloc, NutrientAnalyticsInputState>(
                                  buildWhen: (previous, current) => (previous.currentWeight != current.currentWeight),
                                  builder: (context, state) => CupertinoTextField(
                                    controller: context.read<NutrientAnalyticsInputBloc>().textEditingControllerCurrentWeight,
                                    focusNode: context.read<NutrientAnalyticsInputBloc>().focusNodeCurrentWeight,
                                    onChanged: (value) => context.read<NutrientAnalyticsInputBloc>().add(
                                      NutrientAnalyticsInputEvent.onCurrentWeightChanged(
                                        value: value,
                                      ),
                                    ),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    keyboardType: TextInputType.number,
                                    onSubmitted: (value) {},
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: const Color(
                                            0xFFB0B0B0,
                                          ),
                                          style: BorderStyle.solid,
                                          width: converter.h(
                                            1,
                                          ),
                                          strokeAlign: BorderSide.strokeAlignInside,
                                        ),
                                      ),
                                    ),
                                    cursorColor: const Color(
                                      0xFF3D5DD3,
                                    ),
                                    padding: EdgeInsets.zero,
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.top,
                                    placeholder: '100',
                                    placeholderStyle: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFFB0B0B0,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    style: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFF3D5DD3,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    suffix: Text(
                                      'kg',
                                      style: TextStyle(
                                        height: 1.7,
                                        fontSize: converter.h(
                                          16,
                                        ),
                                        color: switch (state.currentWeight.isEmpty) {
                                          true => const Color(
                                            0xFFB0B0B0,
                                          ),
                                          false => const Color(
                                            0xFF111111,
                                          ),
                                        },
                                        fontWeight: FontWeightAlias.regular,
                                        letterSpacing: converter.w(
                                          -2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: BysonAspectRatio.padding(
                          designWidth: designWidth,
                          designHeight: 225,
                          designPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          builder: (converter) => Stack(
                            children: [
                              PositionedDirectional(
                                start: 0,
                                end: 0,
                                top: 0,
                                height: converter.h(
                                  68,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '왕근육민석 님의\n목표 체중에 대해 알려주세요.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: converter.h(
                                        28,
                                      ),
                                      color: const Color(
                                        0xFF111111,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                start: 0,
                                end: 0,
                                top: converter.h(
                                  84,
                                ),
                                height: converter.h(
                                  42,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '입력된 정보로 영양 정보를 분석해드려요!\n수집된 정보는 외부에 공개되지 않아요.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: converter.h(
                                        14,
                                      ),
                                      color: const Color(
                                        0xFF888888,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                start: 0,
                                width: converter.w(
                                  160,
                                ),
                                bottom: 0,
                                height: converter.h(
                                  51,
                                ),
                                child: BlocBuilder<NutrientAnalyticsInputBloc, NutrientAnalyticsInputState>(
                                  buildWhen: (previous, current) => (previous.goalWeight != current.goalWeight),
                                  builder: (context, state) => CupertinoTextField(
                                    controller: context.read<NutrientAnalyticsInputBloc>().textEditingControllerGoalWeight,
                                    focusNode: context.read<NutrientAnalyticsInputBloc>().focusNodeGoalWeight,
                                    onChanged: (value) => context.read<NutrientAnalyticsInputBloc>().add(
                                      NutrientAnalyticsInputEvent.onGoalWeightChanged(
                                        value: value,
                                      ),
                                    ),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    keyboardType: TextInputType.number,
                                    onSubmitted: (value) {},
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: const Color(
                                            0xFFB0B0B0,
                                          ),
                                          style: BorderStyle.solid,
                                          width: converter.h(
                                            1,
                                          ),
                                          strokeAlign: BorderSide.strokeAlignInside,
                                        ),
                                      ),
                                    ),
                                    cursorColor: const Color(
                                      0xFF3D5DD3,
                                    ),
                                    padding: EdgeInsets.zero,
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.top,
                                    placeholder: '100',
                                    placeholderStyle: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFFB0B0B0,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    style: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFF3D5DD3,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    suffix: Text(
                                      'kg',
                                      style: TextStyle(
                                        height: 1.7,
                                        fontSize: converter.h(
                                          16,
                                        ),
                                        color: switch (state.goalWeight.isEmpty) {
                                          true => const Color(
                                            0xFFB0B0B0,
                                          ),
                                          false => const Color(
                                            0xFF111111,
                                          ),
                                        },
                                        fontWeight: FontWeightAlias.regular,
                                        letterSpacing: converter.w(
                                          -2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: BysonAspectRatio.padding(
                          designWidth: designWidth,
                          designHeight: 225,
                          designPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          builder: (converter) => Stack(
                            children: [
                              PositionedDirectional(
                                start: 0,
                                end: 0,
                                top: 0,
                                height: converter.h(
                                  68,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '칼로리 가이드\n목표 수정이 가능합니다.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: converter.h(
                                        28,
                                      ),
                                      color: const Color(
                                        0xFF111111,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                start: 0,
                                width: converter.w(
                                  160,
                                ),
                                bottom: 0,
                                height: converter.h(
                                  51,
                                ),
                                child: BlocBuilder<NutrientAnalyticsInputBloc, NutrientAnalyticsInputState>(
                                  buildWhen: (previous, current) => (previous.calorieValue != current.calorieValue),
                                  builder: (context, state) => CupertinoTextField(
                                    controller: context.read<NutrientAnalyticsInputBloc>().textEditingControllerCalorieValue,
                                    focusNode: context.read<NutrientAnalyticsInputBloc>().focusNodeCalorieValue,
                                    onChanged: (value) => context.read<NutrientAnalyticsInputBloc>().add(
                                      NutrientAnalyticsInputEvent.onCalorieValueChanged(
                                        value: value,
                                      ),
                                    ),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    keyboardType: TextInputType.number,
                                    onSubmitted: (value) {},
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: const Color(
                                            0xFFB0B0B0,
                                          ),
                                          style: BorderStyle.solid,
                                          width: converter.h(
                                            1,
                                          ),
                                          strokeAlign: BorderSide.strokeAlignInside,
                                        ),
                                      ),
                                    ),
                                    cursorColor: const Color(
                                      0xFF3D5DD3,
                                    ),
                                    padding: EdgeInsets.zero,
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.top,
                                    placeholder: '100',
                                    placeholderStyle: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFFB0B0B0,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    style: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFF3D5DD3,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    suffix: Text(
                                      'kcal',
                                      style: TextStyle(
                                        height: 1.7,
                                        fontSize: converter.h(
                                          16,
                                        ),
                                        color: switch (state.calorieValue.isEmpty) {
                                          true => const Color(
                                            0xFFB0B0B0,
                                          ),
                                          false => const Color(
                                            0xFF111111,
                                          ),
                                        },
                                        fontWeight: FontWeightAlias.regular,
                                        letterSpacing: converter.w(
                                          -2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                end: 0,
                                width: converter.w(
                                  160,
                                ),
                                bottom: 0,
                                height: converter.h(
                                  51,
                                ),
                                child: BlocBuilder<NutrientAnalyticsInputBloc, NutrientAnalyticsInputState>(
                                  buildWhen: (previous, current) => (previous.calorieDuration != current.calorieDuration),
                                  builder: (context, state) => CupertinoTextField(
                                    controller: context.read<NutrientAnalyticsInputBloc>().textEditingControllerCalorieDuration,
                                    focusNode: context.read<NutrientAnalyticsInputBloc>().focusNodeCalorieDuration,
                                    onChanged: (value) => context.read<NutrientAnalyticsInputBloc>().add(
                                      NutrientAnalyticsInputEvent.onCalorieDurationChanged(
                                        value: value,
                                      ),
                                    ),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    keyboardType: TextInputType.number,
                                    onSubmitted: (value) {},
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: const Color(
                                            0xFFB0B0B0,
                                          ),
                                          style: BorderStyle.solid,
                                          width: converter.h(
                                            1,
                                          ),
                                          strokeAlign: BorderSide.strokeAlignInside,
                                        ),
                                      ),
                                    ),
                                    cursorColor: const Color(
                                      0xFF3D5DD3,
                                    ),
                                    padding: EdgeInsets.zero,
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.top,
                                    placeholder: '1',
                                    placeholderStyle: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFFB0B0B0,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    style: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFF3D5DD3,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    suffix: Text(
                                      '주',
                                      style: TextStyle(
                                        height: 1.7,
                                        fontSize: converter.h(
                                          16,
                                        ),
                                        color: switch (state.calorieDuration.isEmpty) {
                                          true => const Color(
                                            0xFFB0B0B0,
                                          ),
                                          false => const Color(
                                            0xFF111111,
                                          ),
                                        },
                                        fontWeight: FontWeightAlias.regular,
                                        letterSpacing: converter.w(
                                          -2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          BysonAspectRatio.padding(
                            designWidth: designWidth,
                            designHeight: 40 + 110,
                            designPadding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            builder: (converter) => Stack(
                              children: [
                                PositionedDirectional(
                                  start: 0,
                                  end: 0,
                                  top: converter.h(
                                    40,
                                  ),
                                  height: converter.h(
                                    52,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '왕근육민석 님의\n식단 유형에 대해 알려주세요.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        height: 1.2,
                                        fontSize: converter.h(
                                          22,
                                        ),
                                        color: const Color(
                                          0xFF111111,
                                        ),
                                        fontWeight: FontWeightAlias.semiBold,
                                        letterSpacing: converter.lt(
                                          fontSize: 22,
                                          percent: -2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                PositionedDirectional(
                                  start: 0,
                                  end: 0,
                                  top: converter.h(
                                    108,
                                  ),
                                  height: converter.h(
                                    42,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '수집된 정보는 외부에 공개되지 않아요.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        height: 1.5,
                                        fontSize: converter.h(
                                          14,
                                        ),
                                        color: const Color(
                                          0xFF888888,
                                        ),
                                        fontWeight: FontWeightAlias.regular,
                                        letterSpacing: converter.w(
                                          -2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: BlocBuilder<NutrientAnalyticsInputBloc, NutrientAnalyticsInputState>(
                              buildWhen: (previous, current) => (previous.menuType != current.menuType),
                              builder: (context, state) => ListView.separated(
                                itemCount: MenuType.values.length,
                                padding: EdgeInsets.symmetric(
                                  vertical: App.instance.overlay.relativeScreenHeight(
                                    56,
                                  ),
                                ),
                                separatorBuilder: (context, index) => const BysonSeparator(
                                  designWidth: designWidth,
                                  designHeight: 16,
                                ),
                                itemBuilder: (context, index) => BysonAspectRatio.padding(
                                  designWidth: designWidth,
                                  designHeight: 80,
                                  designPadding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  builder: (converter) =>
                                      BysonCupertinoButton.outlinedSolid(
                                        onPressed: () => context.read<NutrientAnalyticsInputBloc>().add(
                                          NutrientAnalyticsInputEvent.onSelectMenuType(
                                            value: MenuType.values[index],
                                          ),
                                        ),
                                        color: switch (
                                        MenuType.values[index] == state.menuType) {
                                          true => const Color(
                                            0xFFF1F5FD,
                                          ),
                                          false => Colors.white,
                                        },
                                        border: switch (
                                        MenuType.values[index] == state.menuType) {
                                          true => Border.all(
                                            color: const Color(
                                              0xFF3D5DD3,
                                            ),
                                            width: converter.h(
                                              1,
                                            ),
                                          ),
                                          false => Border.all(
                                            color: const Color(
                                              0xFFE5E5EC,
                                            ),
                                            width: converter.h(
                                              1,
                                            ),
                                          ),
                                        },
                                        borderRadius: BorderRadius.all(
                                          converter.radius(
                                            8,
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            PositionedDirectional(
                                              top: converter.h(
                                                16,
                                              ),
                                              start: 0,
                                              end: 0,
                                              height: converter.h(
                                                27,
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  MenuType.values[index].title,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    height: 1.5,
                                                    fontSize: converter.h(
                                                      18,
                                                    ),
                                                    color: const Color(
                                                      0xFF111111,
                                                    ),
                                                    fontWeight:
                                                    FontWeightAlias.semiBold,
                                                    letterSpacing: converter.lt(
                                                      fontSize: 18,
                                                      percent: -2,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            PositionedDirectional(
                                              bottom: converter.h(
                                                16,
                                              ),
                                              start: 0,
                                              end: 0,
                                              height: converter.h(
                                                18,
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  MenuType.values[index].subTitle,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    height: 1.5,
                                                    fontSize: converter.h(
                                                      14,
                                                    ),
                                                    color: const Color(
                                                      0xFF111111,
                                                    ),
                                                    fontWeight: FontWeightAlias.regular,
                                                    letterSpacing: converter.lt(
                                                      fontSize: 14,
                                                      percent: -2,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: BysonAspectRatio.padding(
                          designWidth: designWidth,
                          designHeight: 442,
                          designPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          builder: (converter) => Stack(
                            children: [
                              PositionedDirectional(
                                start: 0,
                                end: 0,
                                top: 0,
                                height: converter.h(
                                  68,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '왕근육왕민석 님의\n기상 시간을 입력해주세요.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: converter.h(
                                        28,
                                      ),
                                      color: const Color(
                                        0xFF111111,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              PositionedDirectional(
                                start: 0,
                                width: converter.w(
                                  160,
                                ),
                                top: converter.h(
                                  152,
                                ),
                                height: converter.h(
                                  27,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '탄수화물',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: converter.h(
                                        16,
                                      ),
                                      color: const Color(
                                        0xFF111111,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                start: 0,
                                width: converter.w(
                                  160,
                                ),
                                top: converter.h(
                                  187,
                                ),
                                height: converter.h(
                                  51,
                                ),
                                child: BlocBuilder<NutrientAnalyticsInputBloc, NutrientAnalyticsInputState>(
                                  buildWhen: (previous, current) => (previous.carbohydrate != current.carbohydrate),
                                  builder: (context, state) => CupertinoTextField(
                                    controller: context.read<NutrientAnalyticsInputBloc>().textEditingControllerCarbohydrate,
                                    focusNode: context.read<NutrientAnalyticsInputBloc>().focusNodeCarbohydrate,
                                    onChanged: (value) => context.read<NutrientAnalyticsInputBloc>().add(
                                      NutrientAnalyticsInputEvent.onCarbohydrateChanged(
                                        value: value,
                                      ),
                                    ),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    keyboardType: TextInputType.number,
                                    onSubmitted: (value) {},
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: const Color(
                                            0xFFB0B0B0,
                                          ),
                                          style: BorderStyle.solid,
                                          width: converter.h(
                                            1,
                                          ),
                                          strokeAlign: BorderSide.strokeAlignInside,
                                        ),
                                      ),
                                    ),
                                    cursorColor: const Color(
                                      0xFF3D5DD3,
                                    ),
                                    padding: EdgeInsets.zero,
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.top,
                                    placeholder: '100',
                                    placeholderStyle: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFFB0B0B0,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    style: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFF3D5DD3,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    suffix: Text(
                                      'kg',
                                      style: TextStyle(
                                        height: 1.7,
                                        fontSize: converter.h(
                                          16,
                                        ),
                                        color: switch (state.carbohydrate.isEmpty) {
                                          true => const Color(
                                            0xFFB0B0B0,
                                          ),
                                          false => const Color(
                                            0xFF111111,
                                          ),
                                        },
                                        fontWeight: FontWeightAlias.regular,
                                        letterSpacing: converter.w(
                                          -2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                end: 0,
                                width: converter.w(
                                  160,
                                ),
                                top: converter.h(
                                  152,
                                ),
                                height: converter.h(
                                  27,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '칼로리',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: converter.h(
                                        16,
                                      ),
                                      color: const Color(
                                        0xFF111111,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                end: 0,
                                width: converter.w(
                                  160,
                                ),
                                top: converter.h(
                                  187,
                                ),
                                height: converter.h(
                                  35,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      '2000',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        height: 1.1,
                                        fontSize: converter.h(
                                          32,
                                        ),
                                        color: const Color(
                                          0xFF111111,
                                        ),
                                        fontWeight: FontWeightAlias.regular,
                                        letterSpacing: converter.w(
                                          -2,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          'kcal',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            height: 1.7,
                                            fontSize: converter.h(
                                              16,
                                            ),
                                            color: const Color(
                                              0xFF111111,
                                            ),
                                            fontWeight: FontWeightAlias.regular,
                                            letterSpacing: converter.w(
                                              -2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              PositionedDirectional(
                                start: 0,
                                width: converter.w(
                                  160,
                                ),
                                top: converter.h(
                                  52 + 202,
                                ),
                                height: converter.h(
                                  27,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '단백질',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: converter.h(
                                        16,
                                      ),
                                      color: const Color(
                                        0xFF111111,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                start: 0,
                                width: converter.w(
                                  160,
                                ),
                                top: converter.h(
                                  52 + 237,
                                ),
                                height: converter.h(
                                  51,
                                ),
                                child: BlocBuilder<NutrientAnalyticsInputBloc, NutrientAnalyticsInputState>(
                                  buildWhen: (previous, current) => (previous.protein != current.protein),
                                  builder: (context, state) => CupertinoTextField(
                                    controller: context.read<NutrientAnalyticsInputBloc>().textEditingControllerProtein,
                                    focusNode: context.read<NutrientAnalyticsInputBloc>().focusNodeProtein,
                                    onChanged: (value) => context.read<NutrientAnalyticsInputBloc>().add(
                                      NutrientAnalyticsInputEvent.onProteinChanged(
                                        value: value,
                                      ),
                                    ),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    keyboardType: TextInputType.number,
                                    onSubmitted: (value) {},
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: const Color(
                                            0xFFB0B0B0,
                                          ),
                                          style: BorderStyle.solid,
                                          width: converter.h(
                                            1,
                                          ),
                                          strokeAlign: BorderSide.strokeAlignInside,
                                        ),
                                      ),
                                    ),
                                    cursorColor: const Color(
                                      0xFF3D5DD3,
                                    ),
                                    padding: EdgeInsets.zero,
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.top,
                                    placeholder: '100',
                                    placeholderStyle: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFFB0B0B0,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    style: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFF3D5DD3,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    suffix: Text(
                                      'kg',
                                      style: TextStyle(
                                        height: 1.7,
                                        fontSize: converter.h(
                                          16,
                                        ),
                                        color: switch (state.protein.isEmpty) {
                                          true => const Color(
                                            0xFFB0B0B0,
                                          ),
                                          false => const Color(
                                            0xFF111111,
                                          ),
                                        },
                                        fontWeight: FontWeightAlias.regular,
                                        letterSpacing: converter.w(
                                          -2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                end: 0,
                                width: converter.w(
                                  160,
                                ),
                                top: converter.h(
                                  52 + 202,
                                ),
                                height: converter.h(
                                  27,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '칼로리',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: converter.h(
                                        16,
                                      ),
                                      color: const Color(
                                        0xFF111111,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                end: 0,
                                width: converter.w(
                                  160,
                                ),
                                top: converter.h(
                                  52 + 237,
                                ),
                                height: converter.h(
                                  35,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      '2000',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        height: 1.1,
                                        fontSize: converter.h(
                                          32,
                                        ),
                                        color: const Color(
                                          0xFF111111,
                                        ),
                                        fontWeight: FontWeightAlias.regular,
                                        letterSpacing: converter.w(
                                          -2,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          'kcal',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            height: 1.7,
                                            fontSize: converter.h(
                                              16,
                                            ),
                                            color: const Color(
                                              0xFF111111,
                                            ),
                                            fontWeight: FontWeightAlias.regular,
                                            letterSpacing: converter.w(
                                              -2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              PositionedDirectional(
                                start: 0,
                                width: converter.w(
                                  160,
                                ),
                                top: converter.h(
                                  52 + 304,
                                ),
                                height: converter.h(
                                  27,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '지방',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: converter.h(
                                        16,
                                      ),
                                      color: const Color(
                                        0xFF111111,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                start: 0,
                                width: converter.w(
                                  160,
                                ),
                                top: converter.h(
                                  52 + 339,
                                ),
                                height: converter.h(
                                  51,
                                ),
                                child: BlocBuilder<NutrientAnalyticsInputBloc, NutrientAnalyticsInputState>(
                                  buildWhen: (previous, current) => (previous.fat != current.fat),
                                  builder: (context, state) => CupertinoTextField(
                                    controller: context.read<NutrientAnalyticsInputBloc>().textEditingControllerFat,
                                    focusNode: context.read<NutrientAnalyticsInputBloc>().focusNodeFat,
                                    onChanged: (value) => context.read<NutrientAnalyticsInputBloc>().add(
                                      NutrientAnalyticsInputEvent.onFatChanged(
                                        value: value,
                                      ),
                                    ),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    keyboardType: TextInputType.number,
                                    onSubmitted: (value) {},
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: const Color(
                                            0xFFB0B0B0,
                                          ),
                                          style: BorderStyle.solid,
                                          width: converter.h(
                                            1,
                                          ),
                                          strokeAlign: BorderSide.strokeAlignInside,
                                        ),
                                      ),
                                    ),
                                    cursorColor: const Color(
                                      0xFF3D5DD3,
                                    ),
                                    padding: EdgeInsets.zero,
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.top,
                                    placeholder: '100',
                                    placeholderStyle: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFFB0B0B0,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    style: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFF3D5DD3,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    suffix: Text(
                                      'kg',
                                      style: TextStyle(
                                        height: 1.7,
                                        fontSize: converter.h(
                                          16,
                                        ),
                                        color: switch (state.fat.isEmpty) {
                                          true => const Color(
                                            0xFFB0B0B0,
                                          ),
                                          false => const Color(
                                            0xFF111111,
                                          ),
                                        },
                                        fontWeight: FontWeightAlias.regular,
                                        letterSpacing: converter.w(
                                          -2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                end: 0,
                                width: converter.w(
                                  160,
                                ),
                                top: converter.h(
                                  52 + 304,
                                ),
                                height: converter.h(
                                  27,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '칼로리',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: converter.h(
                                        16,
                                      ),
                                      color: const Color(
                                        0xFF111111,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                end: 0,
                                width: converter.w(
                                  160,
                                ),
                                top: converter.h(
                                  52 + 339,
                                ),
                                height: converter.h(
                                  35,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      '2000',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        height: 1.1,
                                        fontSize: converter.h(
                                          32,
                                        ),
                                        color: const Color(
                                          0xFF111111,
                                        ),
                                        fontWeight: FontWeightAlias.regular,
                                        letterSpacing: converter.w(
                                          -2,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          'kcal',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            height: 1.7,
                                            fontSize: converter.h(
                                              16,
                                            ),
                                            color: const Color(
                                              0xFF111111,
                                            ),
                                            fontWeight: FontWeightAlias.regular,
                                            letterSpacing: converter.w(
                                              -2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: BysonAspectRatio.padding(
                          designWidth: designWidth,
                          designHeight: 225,
                          designPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          builder: (converter) => Stack(
                            children: [
                              PositionedDirectional(
                                start: 0,
                                end: 0,
                                top: 0,
                                height: converter.h(
                                  68,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '왕근육왕민석 님의\n기상 시간을 입력해주세요.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: converter.h(
                                        28,
                                      ),
                                      color: const Color(
                                        0xFF111111,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                start: 0,
                                end: 0,
                                top: converter.h(
                                  84,
                                ),
                                height: converter.h(
                                  42,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '입력된 정보로 영양 정보를 분석해드려요!\n수집된 정보는 외부에 공개되지 않아요.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: converter.h(
                                        14,
                                      ),
                                      color: const Color(
                                        0xFF888888,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                start: 0,
                                width: converter.w(
                                  160,
                                ),
                                bottom: 0,
                                height: converter.h(
                                  51,
                                ),
                                child: BlocBuilder<NutrientAnalyticsInputBloc, NutrientAnalyticsInputState>(
                                  buildWhen: (previous, current) => (previous.getUpHour != current.getUpHour),
                                  builder: (context, state) => CupertinoTextField(
                                    controller: context.read<NutrientAnalyticsInputBloc>().textEditingControllerGetUpHour,
                                    focusNode: context.read<NutrientAnalyticsInputBloc>().focusNodeGetUpHour,
                                    onChanged: (value) => context.read<NutrientAnalyticsInputBloc>().add(
                                      NutrientAnalyticsInputEvent.onGetUpHourChanged(
                                        value: value,
                                      ),
                                    ),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    keyboardType: TextInputType.number,
                                    onSubmitted: (value) {},
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: const Color(
                                            0xFFB0B0B0,
                                          ),
                                          style: BorderStyle.solid,
                                          width: converter.h(
                                            1,
                                          ),
                                          strokeAlign: BorderSide.strokeAlignInside,
                                        ),
                                      ),
                                    ),
                                    cursorColor: const Color(
                                      0xFF3D5DD3,
                                    ),
                                    padding: EdgeInsets.zero,
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.top,
                                    placeholder: '100',
                                    placeholderStyle: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFFB0B0B0,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    style: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFF3D5DD3,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    suffix: Text(
                                      'kg',
                                      style: TextStyle(
                                        height: 1.7,
                                        fontSize: converter.h(
                                          16,
                                        ),
                                        color: switch (state.getUpHour.isEmpty) {
                                          true => const Color(
                                            0xFFB0B0B0,
                                          ),
                                          false => const Color(
                                            0xFF111111,
                                          ),
                                        },
                                        fontWeight: FontWeightAlias.regular,
                                        letterSpacing: converter.w(
                                          -2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                end: 0,
                                width: converter.w(
                                  160,
                                ),
                                bottom: 0,
                                height: converter.h(
                                  51,
                                ),
                                child: BlocBuilder<NutrientAnalyticsInputBloc, NutrientAnalyticsInputState>(
                                  buildWhen: (previous, current) => (previous.getUpMinute != current.getUpMinute),
                                  builder: (context, state) => CupertinoTextField(
                                    controller: context.read<NutrientAnalyticsInputBloc>().textEditingControllerGetUpMinute,
                                    focusNode: context.read<NutrientAnalyticsInputBloc>().focusNodeGetUpMinute,
                                    onChanged: (value) => context.read<NutrientAnalyticsInputBloc>().add(
                                      NutrientAnalyticsInputEvent.onGetUpMinuteChanged(
                                        value: value,
                                      ),
                                    ),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    keyboardType: TextInputType.number,
                                    onSubmitted: (value) {},
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: const Color(
                                            0xFFB0B0B0,
                                          ),
                                          style: BorderStyle.solid,
                                          width: converter.h(
                                            1,
                                          ),
                                          strokeAlign: BorderSide.strokeAlignInside,
                                        ),
                                      ),
                                    ),
                                    cursorColor: const Color(
                                      0xFF3D5DD3,
                                    ),
                                    padding: EdgeInsets.zero,
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.top,
                                    placeholder: '1',
                                    placeholderStyle: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFFB0B0B0,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    style: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFF3D5DD3,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    suffix: Text(
                                      '회',
                                      style: TextStyle(
                                        height: 1.7,
                                        fontSize: converter.h(
                                          16,
                                        ),
                                        color: switch (state.getUpMinute.isEmpty) {
                                          true => const Color(
                                            0xFFB0B0B0,
                                          ),
                                          false => const Color(
                                            0xFF111111,
                                          ),
                                        },
                                        fontWeight: FontWeightAlias.regular,
                                        letterSpacing: converter.w(
                                          -2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: BysonAspectRatio.padding(
                          designWidth: designWidth,
                          designHeight: 225,
                          designPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          builder: (converter) => Stack(
                            children: [
                              PositionedDirectional(
                                start: 0,
                                end: 0,
                                top: 0,
                                height: converter.h(
                                  68,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '왕근육왕민석 님의\n취침 시간을 입력해주세요.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: converter.h(
                                        28,
                                      ),
                                      color: const Color(
                                        0xFF111111,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                start: 0,
                                end: 0,
                                top: converter.h(
                                  84,
                                ),
                                height: converter.h(
                                  42,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '입력된 정보로 영양 정보를 분석해드려요!\n수집된 정보는 외부에 공개되지 않아요.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: converter.h(
                                        14,
                                      ),
                                      color: const Color(
                                        0xFF888888,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                start: 0,
                                width: converter.w(
                                  160,
                                ),
                                bottom: 0,
                                height: converter.h(
                                  51,
                                ),
                                child: BlocBuilder<NutrientAnalyticsInputBloc, NutrientAnalyticsInputState>(
                                  buildWhen: (previous, current) => (previous.sleepHour != current.sleepHour),
                                  builder: (context, state) => CupertinoTextField(
                                    controller: context.read<NutrientAnalyticsInputBloc>().textEditingControllerSleepHour,
                                    focusNode: context.read<NutrientAnalyticsInputBloc>().focusNodeSleepHour,
                                    onChanged: (value) => context.read<NutrientAnalyticsInputBloc>().add(
                                      NutrientAnalyticsInputEvent.onSleepHourChanged(
                                        value: value,
                                      ),
                                    ),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    keyboardType: TextInputType.number,
                                    onSubmitted: (value) {},
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: const Color(
                                            0xFFB0B0B0,
                                          ),
                                          style: BorderStyle.solid,
                                          width: converter.h(
                                            1,
                                          ),
                                          strokeAlign: BorderSide.strokeAlignInside,
                                        ),
                                      ),
                                    ),
                                    cursorColor: const Color(
                                      0xFF3D5DD3,
                                    ),
                                    padding: EdgeInsets.zero,
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.top,
                                    placeholder: '100',
                                    placeholderStyle: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFFB0B0B0,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    style: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFF3D5DD3,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    suffix: Text(
                                      'kg',
                                      style: TextStyle(
                                        height: 1.7,
                                        fontSize: converter.h(
                                          16,
                                        ),
                                        color: switch (state.sleepHour.isEmpty) {
                                          true => const Color(
                                            0xFFB0B0B0,
                                          ),
                                          false => const Color(
                                            0xFF111111,
                                          ),
                                        },
                                        fontWeight: FontWeightAlias.regular,
                                        letterSpacing: converter.w(
                                          -2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              PositionedDirectional(
                                end: 0,
                                width: converter.w(
                                  160,
                                ),
                                bottom: 0,
                                height: converter.h(
                                  51,
                                ),
                                child: BlocBuilder<NutrientAnalyticsInputBloc, NutrientAnalyticsInputState>(
                                  buildWhen: (previous, current) => (previous.sleepMinute != current.sleepMinute),
                                  builder: (context, state) => CupertinoTextField(
                                    controller: context.read<NutrientAnalyticsInputBloc>().textEditingControllerSleepMinute,
                                    focusNode: context.read<NutrientAnalyticsInputBloc>().focusNodeSleepMinute,
                                    onChanged: (value) => context.read<NutrientAnalyticsInputBloc>().add(
                                      NutrientAnalyticsInputEvent.onSleepMinuteChanged(
                                        value: value,
                                      ),
                                    ),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    keyboardType: TextInputType.number,
                                    onSubmitted: (value) {},
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: const Color(
                                            0xFFB0B0B0,
                                          ),
                                          style: BorderStyle.solid,
                                          width: converter.h(
                                            1,
                                          ),
                                          strokeAlign: BorderSide.strokeAlignInside,
                                        ),
                                      ),
                                    ),
                                    cursorColor: const Color(
                                      0xFF3D5DD3,
                                    ),
                                    padding: EdgeInsets.zero,
                                    textAlign: TextAlign.start,
                                    textAlignVertical: TextAlignVertical.top,
                                    placeholder: '1',
                                    placeholderStyle: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFFB0B0B0,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    style: TextStyle(
                                      height: 1.1,
                                      fontSize: converter.h(
                                        32,
                                      ),
                                      color: const Color(
                                        0xFF3D5DD3,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.w(
                                        -2,
                                      ),
                                    ),
                                    suffix: Text(
                                      '회',
                                      style: TextStyle(
                                        height: 1.7,
                                        fontSize: converter.h(
                                          16,
                                        ),
                                        color: switch (state.sleepMinute.isEmpty) {
                                          true => const Color(
                                            0xFFB0B0B0,
                                          ),
                                          false => const Color(
                                            0xFF111111,
                                          ),
                                        },
                                        fontWeight: FontWeightAlias.regular,
                                        letterSpacing: converter.w(
                                          -2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]
                        .map(
                          (element) => switch (element is Align) {
                            true => SingleChildScrollView(
                              padding: EdgeInsets.only(
                                top:
                                App.instance.overlay.relativeScreenHeight(
                                  // 76,
                                  60,
                                ),
                              ),
                              child: element,
                            ),
                            false => element,
                          },
                    )
                        .toList(),
                  ),
                ),
              ],
            ),
            bottomNavigationBar: SafeArea(
              child: BlocBuilder<NutrientAnalyticsInputBloc, NutrientAnalyticsInputState>(
                buildWhen: (previous, current) =>
                (previous.page != current.page) ||
                    (previous.lifePattern != current.lifePattern) ||
                    (previous.currentWeight != current.currentWeight) ||
                        (previous.goalWeight != current.goalWeight) ||
                        (previous.calorieValue != current.calorieValue) ||
                        (previous.calorieDuration != current.calorieDuration) ||
                    (previous.menuType != current.menuType) ||
                    (previous.carbohydrate != current.carbohydrate) ||
                    (previous.protein != current.protein) ||
                    (previous.fat != current.fat) ||
                        (previous.getUpHour != current.getUpHour) ||
                        (previous.getUpMinute != current.getUpMinute) ||
                        (previous.sleepHour != current.sleepHour) ||
                        (previous.sleepMinute != current.sleepMinute),
                builder: (context, state) => BysonSwitcher(
                  keys: () => switch (state.page) {
                    NutrientAnalyticsInputPage.lifePattern => state.lifePattern != null,
                    NutrientAnalyticsInputPage.currentWeight => state.currentWeight.isNotEmpty,
                    NutrientAnalyticsInputPage.goalWeight => state.goalWeight.isNotEmpty,
                    NutrientAnalyticsInputPage.calorie => state.calorieValue.isNotEmpty && state.calorieDuration.isNotEmpty,
                    NutrientAnalyticsInputPage.menuRatio => state.carbohydrate.isNotEmpty && state.protein.isNotEmpty && state.fat.isNotEmpty,
                    NutrientAnalyticsInputPage.menuType => state.menuType != null,
                    NutrientAnalyticsInputPage.getUp => state.getUpHour.isNotEmpty && state.getUpMinute.isNotEmpty,
                    NutrientAnalyticsInputPage.sleep => state.sleepHour.isNotEmpty && state.sleepMinute.isNotEmpty,
                  },
                  builder: (value) => Align(
                    alignment: Alignment.bottomCenter,
                    heightFactor: 1,
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(
                          context,
                        ).viewInsets.bottom,
                      ),
                      child: BysonAspectRatio.padding(
                        designWidth: designWidth,
                        designHeight: 60 + 16,
                        designPadding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: 16,
                        ),
                        builder: (converter) =>
                            BysonCupertinoButton.solid(
                              onPressed: switch (value) {
                                true => () => switch (state.page) {
                                  NutrientAnalyticsInputPage.sleep => App.instance.navigator.pop(
                                    true,
                                  ),
                                  _ => context
                                      .read<NutrientAnalyticsInputBloc>()
                                      .pageController
                                      .nextPage(
                                    duration: defaultAnimationDuration,
                                    curve: defaultAnimationCurve,
                                  ),
                                },
                                false => null,
                              },
                              color: switch (value) {
                                true => const Color(
                                  0xFF303F9F,
                                ),
                                false => const Color(
                                  0xFFE5E5EC,
                                ),
                              },
                              borderRadius: BorderRadius.all(
                                converter.radius(
                                  12,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '다음',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    // height: 1.5,
                                    fontSize: converter.h(
                                      18,
                                    ),
                                    color: switch (value) {
                                      true => Colors.white,
                                      false => const Color(
                                        0xFF4F4F4F,
                                      ),
                                    },
                                    fontWeight: FontWeightAlias.regular,
                                    letterSpacing: converter.w(
                                      -0.36,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
