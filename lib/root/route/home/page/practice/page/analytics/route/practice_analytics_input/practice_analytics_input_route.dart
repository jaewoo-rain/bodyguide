import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_input/practice_analytics_input_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:byson_switcher/byson_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class PracticeAnalyticsInputRoute extends StatelessWidget {
  const PracticeAnalyticsInputRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => PracticeAnalyticsInputBloc(),
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
                            '운동정보 입력',
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
                          child: BlocBuilder<PracticeAnalyticsInputBloc,
                              PracticeAnalyticsInputState>(
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
                                              PracticeAnalyticsInputPage
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
                        child: BlocBuilder<PracticeAnalyticsInputBloc,
                            PracticeAnalyticsInputState>(
                          buildWhen: (previous, current) =>
                              (previous.page != current.page),
                          builder: (context, state) =>
                              BysonCupertinoButton.solid(
                            onPressed: () => switch (state.page) {
                              PracticeAnalyticsInputPage.benchPress =>
                                App.instance.navigator.pop(),
                              _ => context
                                  .read<PracticeAnalyticsInputBloc>()
                                  .pageController
                                  .previousPage(
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
                        .read<PracticeAnalyticsInputBloc>()
                        .pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    onPageChanged: (value) => context
                        .read<PracticeAnalyticsInputBloc>()
                        .add(
                          PracticeAnalyticsInputEvent.onPageChanged(
                            value: PracticeAnalyticsInputPage.values.elementAt(
                              value,
                            ),
                          ),
                        ),
                    children: [
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
                                    '왕근육민석 님의 벤치프레스\n최대 수행능력을 입력해주세요.',
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
                                    '입력된 정보로 운동 수행능력를 분석해드려요!\n수집된 정보는 외부에 공개되지 않아요.',
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
                                child: BlocBuilder<PracticeAnalyticsInputBloc,
                                    PracticeAnalyticsInputState>(
                                  buildWhen: (previous, current) =>
                                      (previous.benchPressWeight !=
                                          current.benchPressWeight),
                                  builder: (context, state) =>
                                      CupertinoTextField(
                                    controller: context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .textEditingControllerBenchPressWeight,
                                    focusNode: context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .focusNodeBenchPressWeight,
                                    onChanged: (value) => context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .add(
                                          PracticeAnalyticsInputEvent
                                              .onBenchPressWeightChanged(
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
                                          strokeAlign:
                                              BorderSide.strokeAlignInside,
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
                                        color: switch (
                                            state.benchPressWeight.isEmpty) {
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
                                child: BlocBuilder<PracticeAnalyticsInputBloc,
                                    PracticeAnalyticsInputState>(
                                  buildWhen: (previous, current) =>
                                      (previous.benchPressCount !=
                                          current.benchPressCount),
                                  builder: (context, state) =>
                                      CupertinoTextField(
                                    controller: context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .textEditingControllerBenchPressCount,
                                    focusNode: context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .focusNodeBenchPressCount,
                                    onChanged: (value) => context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .add(
                                          PracticeAnalyticsInputEvent
                                              .onBenchPressCountChanged(
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
                                          strokeAlign:
                                              BorderSide.strokeAlignInside,
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
                                        color: switch (
                                            state.benchPressCount.isEmpty) {
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
                                    '왕근육민석 님의 스쿼트\n최대 수행능력을 입력해주세요.',
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
                                    '입력된 정보로 운동 수행능력를 분석해드려요!\n수집된 정보는 외부에 공개되지 않아요.',
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
                                child: BlocBuilder<PracticeAnalyticsInputBloc,
                                    PracticeAnalyticsInputState>(
                                  buildWhen: (previous, current) =>
                                      (previous.squatWeight !=
                                          current.squatWeight),
                                  builder: (context, state) =>
                                      CupertinoTextField(
                                    controller: context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .textEditingControllerSquatWeight,
                                    focusNode: context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .focusNodeSquatWeight,
                                    onChanged: (value) => context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .add(
                                          PracticeAnalyticsInputEvent
                                              .onSquatWeightChanged(
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
                                          strokeAlign:
                                              BorderSide.strokeAlignInside,
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
                                        color: switch (
                                            state.squatWeight.isEmpty) {
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
                                child: BlocBuilder<PracticeAnalyticsInputBloc,
                                    PracticeAnalyticsInputState>(
                                  buildWhen: (previous, current) =>
                                      (previous.squatCount !=
                                          current.squatCount),
                                  builder: (context, state) =>
                                      CupertinoTextField(
                                    controller: context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .textEditingControllerSquatCount,
                                    focusNode: context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .focusNodeSquatCount,
                                    onChanged: (value) => context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .add(
                                          PracticeAnalyticsInputEvent
                                              .onSquatCountChanged(
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
                                          strokeAlign:
                                              BorderSide.strokeAlignInside,
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
                                        color: switch (
                                            state.squatCount.isEmpty) {
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
                                    '왕근육민석 님의 데드리프트\n최대 수행능력을 입력해주세요.',
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
                                    '입력된 정보로 운동 수행능력를 분석해드려요!\n수집된 정보는 외부에 공개되지 않아요.',
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
                                child: BlocBuilder<PracticeAnalyticsInputBloc,
                                    PracticeAnalyticsInputState>(
                                  buildWhen: (previous, current) =>
                                      (previous.deadLiftWeight !=
                                          current.deadLiftWeight),
                                  builder: (context, state) =>
                                      CupertinoTextField(
                                    controller: context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .textEditingControllerDeadLiftWeight,
                                    focusNode: context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .focusNodeDeadLiftWeight,
                                    onChanged: (value) => context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .add(
                                          PracticeAnalyticsInputEvent
                                              .onDeadLiftWeightChanged(
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
                                          strokeAlign:
                                              BorderSide.strokeAlignInside,
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
                                        color: switch (
                                            state.deadLiftWeight.isEmpty) {
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
                                child: BlocBuilder<PracticeAnalyticsInputBloc,
                                    PracticeAnalyticsInputState>(
                                  buildWhen: (previous, current) =>
                                      (previous.deadLiftCount !=
                                          current.deadLiftCount),
                                  builder: (context, state) =>
                                      CupertinoTextField(
                                    controller: context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .textEditingControllerDeadLiftCount,
                                    focusNode: context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .focusNodeDeadLiftCount,
                                    onChanged: (value) => context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .add(
                                          PracticeAnalyticsInputEvent
                                              .onDeadLiftCountChanged(
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
                                          strokeAlign:
                                              BorderSide.strokeAlignInside,
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
                                        color: switch (
                                            state.deadLiftCount.isEmpty) {
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
                                    '왕근육민석 님의 오버헤드프레스\n최대 수행능력을 입력해주세요.',
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
                                    '입력된 정보로 운동 수행능력를 분석해드려요!\n수집된 정보는 외부에 공개되지 않아요.',
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
                                child: BlocBuilder<PracticeAnalyticsInputBloc,
                                    PracticeAnalyticsInputState>(
                                  buildWhen: (previous, current) =>
                                      (previous.overHeadPressWeight !=
                                          current.overHeadPressWeight),
                                  builder: (context, state) =>
                                      CupertinoTextField(
                                    controller: context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .textEditingControllerOverHeadPressWeight,
                                    focusNode: context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .focusNodeOverHeadPressWeight,
                                    onChanged: (value) => context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .add(
                                          PracticeAnalyticsInputEvent
                                              .onOverHeadPressWeightChanged(
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
                                          strokeAlign:
                                              BorderSide.strokeAlignInside,
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
                                        color: switch (
                                            state.overHeadPressWeight.isEmpty) {
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
                                child: BlocBuilder<PracticeAnalyticsInputBloc,
                                    PracticeAnalyticsInputState>(
                                  buildWhen: (previous, current) =>
                                      (previous.overHeadPressCount !=
                                          current.overHeadPressCount),
                                  builder: (context, state) =>
                                      CupertinoTextField(
                                    controller: context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .textEditingControllerOverHeadPressCount,
                                    focusNode: context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .focusNodeOverHeadPressCount,
                                    onChanged: (value) => context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .add(
                                          PracticeAnalyticsInputEvent
                                              .onOverHeadPressCountChanged(
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
                                          strokeAlign:
                                              BorderSide.strokeAlignInside,
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
                                        color: switch (
                                            state.overHeadPressCount.isEmpty) {
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
                                    '왕근육민석 님의 푸쉬업\n최대 수행능력을 입력해주세요.',
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
                                    '입력된 정보로 운동 수행능력를 분석해드려요!\n수집된 정보는 외부에 공개되지 않아요.',
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
                                child: BlocBuilder<PracticeAnalyticsInputBloc,
                                    PracticeAnalyticsInputState>(
                                  buildWhen: (previous, current) =>
                                      (previous.pushUpCount !=
                                          current.pushUpCount),
                                  builder: (context, state) =>
                                      CupertinoTextField(
                                    controller: context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .textEditingControllerPushUpCount,
                                    focusNode: context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .focusNodePushUpCount,
                                    onChanged: (value) => context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .add(
                                          PracticeAnalyticsInputEvent
                                              .onPushUpCountChanged(
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
                                          strokeAlign:
                                              BorderSide.strokeAlignInside,
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
                                        color: switch (
                                            state.pushUpCount.isEmpty) {
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
                                    '왕근육민석 님의 풀업\n최대 수행능력을 입력해주세요.',
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
                                    '입력된 정보로 운동 수행능력를 분석해드려요!\n수집된 정보는 외부에 공개되지 않아요.',
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
                                child: BlocBuilder<PracticeAnalyticsInputBloc,
                                    PracticeAnalyticsInputState>(
                                  buildWhen: (previous, current) =>
                                      (previous.pullUpCount !=
                                          current.pullUpCount),
                                  builder: (context, state) =>
                                      CupertinoTextField(
                                    controller: context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .textEditingControllerPullUpCount,
                                    focusNode: context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .focusNodePullUpCount,
                                    onChanged: (value) => context
                                        .read<PracticeAnalyticsInputBloc>()
                                        .add(
                                          PracticeAnalyticsInputEvent
                                              .onPullUpCountChanged(
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
                                          strokeAlign:
                                              BorderSide.strokeAlignInside,
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
                                        color: switch (
                                            state.pullUpCount.isEmpty) {
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
                          (element) => SingleChildScrollView(
                            padding: EdgeInsets.only(
                              top: App.instance.overlay.relativeScreenHeight(
                                // 76,
                                60,
                              ),
                            ),
                            child: element,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
            bottomNavigationBar: SafeArea(
              child: BlocBuilder<PracticeAnalyticsInputBloc,
                  PracticeAnalyticsInputState>(
                buildWhen: (previous, current) =>
                    (previous.page != current.page) ||
                    (previous.benchPressWeight != current.benchPressWeight) ||
                    (previous.benchPressCount != current.benchPressCount) ||
                    (previous.squatWeight != current.squatWeight) ||
                    (previous.squatCount != current.squatCount) ||
                    (previous.deadLiftWeight != current.deadLiftWeight) ||
                    (previous.deadLiftCount != current.deadLiftCount) ||
                    (previous.overHeadPressWeight !=
                        current.overHeadPressWeight) ||
                    (previous.overHeadPressCount !=
                        current.overHeadPressCount) ||
                    (previous.pushUpCount != current.pushUpCount) ||
                    (previous.pullUpCount != current.pullUpCount),
                builder: (context, state) => BysonSwitcher(
                  keys: () => switch (state.page) {
                    PracticeAnalyticsInputPage.benchPress =>
                      state.benchPressWeight.isNotEmpty &&
                          state.benchPressCount.isNotEmpty,
                    PracticeAnalyticsInputPage.squat =>
                      state.squatWeight.isNotEmpty &&
                          state.squatCount.isNotEmpty,
                    PracticeAnalyticsInputPage.deadLift =>
                      state.deadLiftWeight.isNotEmpty &&
                          state.deadLiftCount.isNotEmpty,
                    PracticeAnalyticsInputPage.overHeadPress =>
                      state.overHeadPressWeight.isNotEmpty &&
                          state.overHeadPressCount.isNotEmpty,
                    PracticeAnalyticsInputPage.pushUp =>
                      state.pushUpCount.isNotEmpty,
                    PracticeAnalyticsInputPage.pullUp =>
                      state.pullUpCount.isNotEmpty,
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
                        builder: (converter) => BysonCupertinoButton.solid(
                          onPressed: switch (value) {
                            true => () => switch (state.page) {
                                  PracticeAnalyticsInputPage.pullUp =>
                                    App.instance.navigator.pop(true),
                                  _ => context
                                      .read<PracticeAnalyticsInputBloc>()
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
