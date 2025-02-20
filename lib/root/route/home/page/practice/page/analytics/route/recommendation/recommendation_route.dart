import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/constant/values.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/model/local/practice.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/recommendation/recommendation_bloc.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_do/practice_do_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:byson_switcher/byson_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_circular_progress_indicator/gradient_circular_progress_indicator.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher_string.dart';

class RecommendationRoute extends StatelessWidget {
  const RecommendationRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => RecommendationBloc(),
        child: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              automaticallyImplyLeading: false,
              scrolledUnderElevation: 0,
              elevation: 0,
              systemOverlayStyle: systemUiOverlayStyleDark,
              flexibleSpace: SafeArea(
                child: BysonAspectRatio(
                  designWidth: designWidth,
                  designHeight: 56,
                  builder: (converter) => Stack(
                    children: [
                      PositionedDirectional(
                        top: 0,
                        start: 0,
                        bottom: 0,
                        width: converter.h(
                          56,
                        ),
                        child: BysonCupertinoButton.solid(
                          onPressed: () => App.instance.navigator.pop(),
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
                      Center(
                        child: Text(
                          '보충제 추천',
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
                    ],
                  ),
                ),
              ),
            ),
            backgroundColor: const Color(
              0xFFF1F1F5,
            ),
            body: PageView(
              controller: context.read<RecommendationBloc>().pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Scaffold(
                  backgroundColor: Colors.transparent,
                  body: Column(
                    children: [
                      BysonAspectRatio(
                        designWidth: designWidth,
                        designHeight: 149,
                        builder: (converter) => Stack(
                          children: [
                            PositionedDirectional(
                              top: converter.h(
                                32,
                              ),
                              start: converter.w(
                                20,
                              ),
                              height: converter.h(
                                60,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '보충제 추천을 위해서는\n아래의 정보가 입력되어야해요',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: converter.h(
                                      20,
                                    ),
                                    color: const Color(
                                      0xFF344BC1,
                                    ),
                                    fontWeight: FontWeightAlias.semiBold,
                                    letterSpacing: converter.lt(
                                      fontSize: 20,
                                      percent: -2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            PositionedDirectional(
                              bottom: converter.h(
                                32,
                              ),
                              start: converter.w(
                                20,
                              ),
                              height: converter.h(
                                21,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '아래 입력 정보에 따라 보충제를 추천드려요',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: converter.h(
                                      14,
                                    ),
                                    color: const Color(
                                      0xFF5D5D5D,
                                    ),
                                    fontWeight: FontWeightAlias.medium,
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
                      Expanded(
                        child: ListView(
                          children: [
                            BysonAspectRatio.padding(
                              designWidth: designWidth,
                              designHeight: 81,
                              designPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              builder: (converter) =>
                                  BysonCupertinoButton.outlinedSolid(
                                onPressed: () {},
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color(
                                    0xFFE5E5EC,
                                  ),
                                  width: converter.h(
                                    1,
                                  ),
                                ),
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
                                      start: converter.w(
                                        16,
                                      ),
                                      height: converter.h(
                                        27,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '기본 정보 입력',
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
                                      start: converter.w(
                                        16,
                                      ),
                                      height: converter.h(
                                        18,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '기본 정보 입력이 확인되었어요',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            height: 1.5,
                                            fontSize: converter.h(
                                              12,
                                            ),
                                            color: const Color(
                                              0xFF888888,
                                            ),
                                            fontWeight: FontWeightAlias.regular,
                                            letterSpacing: converter.lt(
                                              fontSize: 12,
                                              percent: -2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    PositionedDirectional(
                                      top: converter.h(
                                        20.5,
                                      ),
                                      end: converter.w(
                                        16,
                                      ),
                                      width: converter.w(
                                        40,
                                      ),
                                      height: converter.h(
                                        40,
                                      ),
                                      child: Icon(
                                        Icons.check,
                                        size: converter.w(
                                          28,
                                        ),
                                        color: const Color(
                                          0xFF04B014,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const BysonSeparator(
                              designWidth: designWidth,
                              designHeight: 8,
                            ),
                            BysonAspectRatio.padding(
                              designWidth: designWidth,
                              designHeight: 81,
                              designPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              builder: (converter) =>
                                  BysonCupertinoButton.outlinedSolid(
                                onPressed: () {},
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color(
                                    0xFFE5E5EC,
                                  ),
                                  width: converter.h(
                                    1,
                                  ),
                                ),
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
                                      start: converter.w(
                                        16,
                                      ),
                                      height: converter.h(
                                        27,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '운동 수준 입력',
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
                                      start: converter.w(
                                        16,
                                      ),
                                      height: converter.h(
                                        18,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '운동 수준 입력이 확인되었어요',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            height: 1.5,
                                            fontSize: converter.h(
                                              12,
                                            ),
                                            color: const Color(
                                              0xFF888888,
                                            ),
                                            fontWeight: FontWeightAlias.regular,
                                            letterSpacing: converter.lt(
                                              fontSize: 12,
                                              percent: -2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    PositionedDirectional(
                                      top: converter.h(
                                        20.5,
                                      ),
                                      end: converter.w(
                                        16,
                                      ),
                                      width: converter.w(
                                        40,
                                      ),
                                      height: converter.h(
                                        40,
                                      ),
                                      child: Icon(
                                        Icons.check,
                                        size: converter.w(
                                          28,
                                        ),
                                        color: const Color(
                                          0xFF04B014,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const BysonSeparator(
                              designWidth: designWidth,
                              designHeight: 8,
                            ),
                            BysonAspectRatio.padding(
                              designWidth: designWidth,
                              designHeight: 81,
                              designPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              builder: (converter) =>
                                  BysonCupertinoButton.outlinedSolid(
                                onPressed: () {},
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color(
                                    0xFFE5E5EC,
                                  ),
                                  width: converter.h(
                                    1,
                                  ),
                                ),
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
                                      start: converter.w(
                                        16,
                                      ),
                                      height: converter.h(
                                        27,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '영양 정보 입력',
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
                                      start: converter.w(
                                        16,
                                      ),
                                      height: converter.h(
                                        18,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '영양 정보 입력이 확인되었어요',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            height: 1.5,
                                            fontSize: converter.h(
                                              12,
                                            ),
                                            color: const Color(
                                              0xFF888888,
                                            ),
                                            fontWeight: FontWeightAlias.regular,
                                            letterSpacing: converter.lt(
                                              fontSize: 12,
                                              percent: -2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    PositionedDirectional(
                                      top: converter.h(
                                        20.5,
                                      ),
                                      end: converter.w(
                                        16,
                                      ),
                                      width: converter.w(
                                        40,
                                      ),
                                      height: converter.h(
                                        40,
                                      ),
                                      child: Icon(
                                        Icons.check,
                                        size: converter.w(
                                          28,
                                        ),
                                        color: const Color(
                                          0xFF04B014,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  bottomNavigationBar: SafeArea(
                    child: BysonAspectRatio.padding(
                      designWidth: designWidth,
                      designHeight: 16 + 60 + 16,
                      designPadding: const EdgeInsets.only(
                        top: 16,
                        left: 20,
                        right: 20,
                        bottom: 16,
                      ),
                      builder: (converter) => BysonCupertinoButton.solid(
                        onPressed: () => context
                            .read<RecommendationBloc>()
                            .pageController
                            .nextPage(
                              duration: defaultAnimationDuration,
                              curve: defaultAnimationCurve,
                            ),
                        color: const Color(
                          0xFF303F9F,
                        ),
                        borderRadius: BorderRadius.all(
                          converter.radius(
                            12,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '다음으로',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              // height: 1.5,
                              fontSize: converter.h(
                                18,
                              ),
                              color: Colors.white,
                              fontWeight: FontWeightAlias.regular,
                              letterSpacing: converter.lt(
                                fontSize: 18,
                                percent: -2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Scaffold(
                  backgroundColor: Colors.transparent,
                  body: Column(
                    children: [
                      BysonAspectRatio(
                        designWidth: designWidth,
                        designHeight: 170,
                        builder: (converter) => Stack(
                          children: [
                            PositionedDirectional(
                              top: converter.h(
                                32,
                              ),
                              start: converter.w(
                                20,
                              ),
                              height: converter.h(
                                60,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '보충제 섭취의\n목적에 대해 알려주세요',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: converter.h(
                                      20,
                                    ),
                                    color: const Color(
                                      0xFF344BC1,
                                    ),
                                    fontWeight: FontWeightAlias.semiBold,
                                    letterSpacing: converter.lt(
                                      fontSize: 20,
                                      percent: -2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            PositionedDirectional(
                              bottom: converter.h(
                                32,
                              ),
                              start: converter.w(
                                20,
                              ),
                              height: converter.h(
                                42,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '최소 1개 에서 최대 5개를 골라주세요\n맞춤형 제품을 추천해드릴게요.',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: converter.h(
                                      14,
                                    ),
                                    color: const Color(
                                      0xFF5D5D5D,
                                    ),
                                    fontWeight: FontWeightAlias.medium,
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
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal:
                                App.instance.overlay.relativeScreenWidth(
                              20,
                            ),
                          ),
                          child: BlocBuilder<RecommendationBloc,
                              RecommendationState>(
                            buildWhen: (previous, current) =>
                                (previous.goals != current.goals),
                            builder: (context, state) => SizedBox(
                              width: App.instance.overlay.screenSize.width,
                              child: SingleChildScrollView(
                                child: Wrap(
                                  spacing:
                                      App.instance.overlay.relativeScreenWidth(
                                    8,
                                  ),
                                  runSpacing:
                                      App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  direction: Axis.horizontal,
                                  children: [
                                    '각성효과',
                                    '근력 향상',
                                    '근지구력 향상',
                                    '수행능력 향상',
                                    '혈류 개선',
                                    '체지방 감소',
                                    '산소 공급 개선',
                                    '근합성 촉진',
                                    '장 건강',
                                    '근회복 증진',
                                    '근손실 방지',
                                    '에너지 보충',
                                    '탈수 예방',
                                    '포만감 제공',
                                    '항산화 작용',
                                    '수면질 향상',
                                    '항암 효과',
                                    '중금속 해독',
                                    '스트레스 완화',
                                    '혈당 조절',
                                    '피부 건강',
                                    '성장 호르몬 분비',
                                    '혈압 건강',
                                    '염증 억제',
                                    '심혈관 건강',
                                    '골다공증 예방',
                                    '뇌 기능 향상',
                                    '콜레스테롤 감소',
                                    '여성 호르몬 균형',
                                    '관절 건강 유지',
                                  ]
                                      .map(
                                        (element) =>
                                            BysonCupertinoButton.outlinedSolid(
                                          minSize: 0,
                                          onPressed: () => context
                                              .read<RecommendationBloc>()
                                              .add(
                                                RecommendationEvent.toggleGoal(
                                                  value: element,
                                                ),
                                              ),
                                          color: switch (
                                              state.goals.contains(element)) {
                                            true => const Color(
                                                0xFF3D5DD3,
                                              ),
                                            false => Colors.transparent,
                                          },
                                          padding: EdgeInsets.symmetric(
                                            horizontal: App.instance.overlay
                                                .relativeScreenWidth(
                                              16,
                                            ),
                                            vertical: App.instance.overlay
                                                .relativeScreenHeight(
                                              12,
                                            ),
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            App.instance.overlay
                                                .relativeScreenWidth(
                                              100,
                                            ),
                                          ),
                                          border: switch (
                                              state.goals.contains(element)) {
                                            true => null,
                                            false => Border.all(
                                                color: const Color(
                                                  0xFFB0B0B0,
                                                ),
                                                width: App.instance.overlay
                                                    .relativeScreenHeight(
                                                  1,
                                                ),
                                              ),
                                          },
                                          child: Center(
                                            widthFactor: 1,
                                            heightFactor: 1,
                                            child: Text(
                                              element,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                height: 1.5,
                                                fontSize: App.instance.overlay
                                                    .relativeScreenWidth(
                                                  14,
                                                ),
                                                color: switch (state.goals
                                                    .contains(element)) {
                                                  true => Colors.white,
                                                  false => const Color(
                                                      0xFF3D3D3D,
                                                    ),
                                                },
                                                fontWeight:
                                                    FontWeightAlias.medium,
                                                letterSpacing: 0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  bottomNavigationBar: SafeArea(
                    child: BysonAspectRatio.padding(
                      designWidth: designWidth,
                      designHeight: 16 + 60 + 16,
                      designPadding: const EdgeInsets.only(
                        top: 16,
                        left: 20,
                        right: 20,
                        bottom: 16,
                      ),
                      builder: (converter) =>
                          BlocBuilder<RecommendationBloc, RecommendationState>(
                        buildWhen: (previous, current) =>
                            (previous.goals != current.goals),
                        builder: (context, state) => BysonSwitcher(
                          keys: () => state.goals.isNotEmpty,
                          builder: (value) => BysonCupertinoButton.solid(
                            onPressed: switch (value) {
                              true => () async {
                                  final PageController pageController = context
                                      .read<RecommendationBloc>()
                                      .pageController;

                                  await pageController
                                      .nextPage(
                                    duration: defaultAnimationDuration,
                                    curve: defaultAnimationCurve,
                                  )
                                      .then(
                                    (value) async {
                                      await Future.delayed(
                                        const Duration(
                                          seconds: 3,
                                        ),
                                      ).then(
                                        (value) async =>
                                            await pageController.nextPage(
                                          duration: defaultAnimationDuration,
                                          curve: defaultAnimationCurve,
                                        ),
                                      );
                                    },
                                  );
                                },
                              false => null,
                            },
                            color: switch (state.goals.isNotEmpty) {
                              true => const Color(
                                  0xFF303F9F,
                                ),
                              false => const Color(
                                  0xFF303F9F,
                                ).withOpacity(
                                  0.5,
                                ),
                            },
                            borderRadius: BorderRadius.all(
                              converter.radius(
                                12,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '선택 완료 (${state.goals.length})',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  // height: 1.5,
                                  fontSize: converter.h(
                                    18,
                                  ),
                                  color: Colors.white,
                                  fontWeight: FontWeightAlias.regular,
                                  letterSpacing: converter.lt(
                                    fontSize: 18,
                                    percent: -2,
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
                Center(
                  child: BysonAspectRatio(
                    designWidth: designWidth,
                    designHeight: 190,
                    builder: (converter) => Stack(
                      children: [
                        PositionedDirectional(
                          top: 0,
                          start: converter.hcx(
                            100,
                          ),
                          width: converter.w(
                            100,
                          ),
                          height: converter.h(
                            100,
                          ),
                          child: CircularProgressIndicator(
                            strokeWidth: converter.h(
                              8,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            '사용자 정보를\n분석하고 있습니다.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.2,
                              fontSize: converter.h(
                                24,
                              ),
                              color: const Color(
                                0xFF5D5D5D,
                              ),
                              fontWeight: FontWeightAlias.semiBold,
                              letterSpacing: converter.lt(
                                fontSize: 24,
                                percent: -2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Scaffold(
                  backgroundColor: Colors.transparent,
                  body: Center(
                    child: BysonAspectRatio(
                      designWidth: designWidth,
                      designHeight: 190,
                      builder: (converter) => Stack(
                        children: [
                          PositionedDirectional(
                            top: 0,
                            start: converter.hcx(
                              100,
                            ),
                            width: converter.w(
                              100,
                            ),
                            height: converter.h(
                              100,
                            ),
                            child: Assets.image.imgAnalyticsDone.image(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              width: converter.w(
                                100,
                              ),
                              height: converter.h(
                                100,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              '사용자 정보를\n분석하고 있습니다.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                height: 1.2,
                                fontSize: converter.h(
                                  24,
                                ),
                                color: const Color(
                                  0xFF5D5D5D,
                                ),
                                fontWeight: FontWeightAlias.semiBold,
                                letterSpacing: converter.lt(
                                  fontSize: 24,
                                  percent: -2,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  bottomNavigationBar: SafeArea(
                    child: BysonAspectRatio.padding(
                      designWidth: designWidth,
                      designHeight: 16 + 60 + 16,
                      designPadding: const EdgeInsets.only(
                        top: 16,
                        left: 20,
                        right: 20,
                        bottom: 16,
                      ),
                      builder: (converter) => BysonCupertinoButton.solid(
                        onPressed: () => context
                            .read<RecommendationBloc>()
                            .pageController
                            .nextPage(
                              duration: defaultAnimationDuration,
                              curve: defaultAnimationCurve,
                            ),
                        color: const Color(
                          0xFF303F9F,
                        ),
                        borderRadius: BorderRadius.all(
                          converter.radius(
                            12,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '분석결과 보러가기',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              // height: 1.5,
                              fontSize: converter.h(
                                18,
                              ),
                              color: Colors.white,
                              fontWeight: FontWeightAlias.regular,
                              letterSpacing: converter.lt(
                                fontSize: 18,
                                percent: -2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Scaffold(
                  backgroundColor: Colors.transparent,
                  body: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                      horizontal: App.instance.overlay.relativeScreenWidth(
                        20,
                      ),
                      vertical: App.instance.overlay.relativeScreenHeight(
                        32,
                      ),
                    ),
                    child: Column(
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: const Color(
                                0xFFE5E5EC,
                              ),
                              width: App.instance.overlay.relativeScreenWidth(
                                1,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(
                              App.instance.overlay.relativeScreenWidth(
                                8,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  App.instance.overlay.relativeScreenWidth(
                                20,
                              ),
                              vertical:
                                  App.instance.overlay.relativeScreenHeight(
                                24,
                              ),
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '스포츠 영양제 조합 추천',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        14,
                                      ),
                                      color: const Color(
                                        0xFF5D5D5D,
                                      ),
                                      fontWeight: FontWeightAlias.medium,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '스포츠 영양제 조합 추천',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        20,
                                      ),
                                      color: const Color(
                                        0xFF344BC1,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '본 내용은 운동 수준 및 생활 습관에 따라 상이할 수 있으며 전문적인 소견을 대신하지 않습니다.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        12,
                                      ),
                                      color: const Color(
                                        0xFF888888,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const BysonSeparator(
                          designWidth: 335,
                          designHeight: 8,
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: const Color(
                                0xFFE5E5EC,
                              ),
                              width: App.instance.overlay.relativeScreenWidth(
                                1,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(
                              App.instance.overlay.relativeScreenWidth(
                                8,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  App.instance.overlay.relativeScreenWidth(
                                20,
                              ),
                              vertical:
                                  App.instance.overlay.relativeScreenHeight(
                                24,
                              ),
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '스포츠 영양제 추천',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        14,
                                      ),
                                      color: const Color(
                                        0xFF5D5D5D,
                                      ),
                                      fontWeight: FontWeightAlias.medium,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '운동 수준에 따른 추천',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        20,
                                      ),
                                      color: const Color(
                                        0xFF344BC1,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '이윤구님의 운동 수준에 적합한 기능성 보충제를 추천드립니다.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        12,
                                      ),
                                      color: const Color(
                                        0xFF888888,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    16,
                                  ),
                                  thickness: 0,
                                ),
                                _buildExpansionTile(
                                  context: context,
                                  title: '단백질 보충제',
                                  initiallyExpanded: true,
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                _buildExpansionTile(
                                  context: context,
                                  title: 'BCAA',
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                _buildExpansionTile(
                                  context: context,
                                  title: '크레아틴',
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                _buildExpansionTile(
                                  context: context,
                                  title: '베타알라닌',
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                _buildExpansionTile(
                                  context: context,
                                  title: '글루타민',
                                ),
                              ],
                            ),
                          ),
                        ),
                        const BysonSeparator(
                          designWidth: 335,
                          designHeight: 8,
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: const Color(
                                0xFFE5E5EC,
                              ),
                              width: App.instance.overlay.relativeScreenWidth(
                                1,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(
                              App.instance.overlay.relativeScreenWidth(
                                8,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  App.instance.overlay.relativeScreenWidth(
                                20,
                              ),
                              vertical:
                                  App.instance.overlay.relativeScreenHeight(
                                24,
                              ),
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '스포츠 영양제 추천',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        14,
                                      ),
                                      color: const Color(
                                        0xFF5D5D5D,
                                      ),
                                      fontWeight: FontWeightAlias.medium,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '운동 목적에 따른 추천',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        20,
                                      ),
                                      color: const Color(
                                        0xFF344BC1,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '이윤구님이 선택하신 운동 목적은 체지방 감소, 수행능력 향상입니다.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        12,
                                      ),
                                      color: const Color(
                                        0xFF888888,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    16,
                                  ),
                                  thickness: 0,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '체지방 감소에 도움이 되는 보충제',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        16,
                                      ),
                                      color: const Color(
                                        0xFF344BC1,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    6,
                                  ),
                                  thickness: 0,
                                ),
                                _buildExpansionTile(
                                  context: context,
                                  title: '카르니틴',
                                  initiallyExpanded: true,
                                  description:
                                      '카르니틴 보충제는 체지방 감소에 도움이 됩니다. 공복에 섭취하는 것이 효과적이며 운동 전 20-30분 전에 섭취하세요.',
                                  options: [
                                    '주요 기능: 지방 대사 촉진, 체지방 감소 도움',
                                    '권장 섭취량: 2-3g / day',
                                    '부작용: 메스꺼움, 설사 유발 가능성',
                                    '주의사항: 신장 질환 환자 섭취 주의',
                                  ],
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                _buildExpansionTile(
                                  context: context,
                                  title: '카제인 보충제',
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                _buildExpansionTile(
                                  context: context,
                                  title: '차전자피식이섬유',
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                _buildExpansionTile(
                                  context: context,
                                  title: '녹차 추출물',
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                _buildExpansionTile(
                                  context: context,
                                  title: '가르시니아 캄보지아',
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    16,
                                  ),
                                  thickness: 0,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '수행능력 향상에 도움이 되는 보충제',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        16,
                                      ),
                                      color: const Color(
                                        0xFF344BC1,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    6,
                                  ),
                                  thickness: 0,
                                ),
                                _buildExpansionTile(
                                  context: context,
                                  title: '베타알라닌',
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                _buildExpansionTile(
                                  context: context,
                                  title: '카페인',
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                _buildExpansionTile(
                                  context: context,
                                  title: '크레아틴',
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                _buildExpansionTile(
                                  context: context,
                                  title: '글리세롤',
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                _buildExpansionTile(
                                  context: context,
                                  title: 'BCAA',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  bottomNavigationBar: SafeArea(
                    child: BysonAspectRatio.padding(
                      designWidth: designWidth,
                      designHeight: 16 + 60 + 16,
                      designPadding: const EdgeInsets.only(
                        top: 16,
                        left: 20,
                        right: 20,
                        bottom: 16,
                      ),
                      builder: (converter) => BysonCupertinoButton.solid(
                        onPressed: () => context
                            .read<RecommendationBloc>()
                            .pageController
                            .nextPage(
                              duration: defaultAnimationDuration,
                              curve: defaultAnimationCurve,
                            ),
                        color: const Color(
                          0xFF303F9F,
                        ),
                        borderRadius: BorderRadius.all(
                          converter.radius(
                            12,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '제품 추천받기',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              // height: 1.5,
                              fontSize: converter.h(
                                18,
                              ),
                              color: Colors.white,
                              fontWeight: FontWeightAlias.regular,
                              letterSpacing: converter.lt(
                                fontSize: 18,
                                percent: -2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Scaffold(
                  backgroundColor: Colors.transparent,
                  body: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                      horizontal: App.instance.overlay.relativeScreenWidth(
                        20,
                      ),
                      vertical: App.instance.overlay.relativeScreenHeight(
                        32,
                      ),
                    ),
                    child: Column(
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: const Color(
                                0xFFE5E5EC,
                              ),
                              width: App.instance.overlay.relativeScreenWidth(
                                1,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(
                              App.instance.overlay.relativeScreenWidth(
                                8,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  App.instance.overlay.relativeScreenWidth(
                                20,
                              ),
                              vertical:
                                  App.instance.overlay.relativeScreenHeight(
                                24,
                              ),
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '스포츠 영양제 조합 추천',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        14,
                                      ),
                                      color: const Color(
                                        0xFF5D5D5D,
                                      ),
                                      fontWeight: FontWeightAlias.medium,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '스포츠 영양제 조합 추천',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        20,
                                      ),
                                      color: const Color(
                                        0xFF344BC1,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '이윤구님의 운동 수준에 적합한 기능성 보충제를 추천드립니다.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        12,
                                      ),
                                      color: const Color(
                                        0xFF888888,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    24,
                                  ),
                                  thickness: 0,
                                ),
                                GridView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: App.instance.overlay
                                        .relativeScreenHeight(
                                      24,
                                    ),
                                    crossAxisSpacing: App.instance.overlay
                                        .relativeScreenWidth(
                                      16,
                                    ),
                                    childAspectRatio: 140 / 270,
                                  ),
                                  itemCount: 4,
                                  itemBuilder: (context, index) =>
                                      BysonAspectRatio(
                                    designWidth: 140,
                                    designHeight: 270,
                                    builder: (converter) =>
                                        BysonCupertinoButton.solid(
                                      onPressed: () => launchUrlString(
                                        'https://www.coupang.com/vp/products/8203767283?itemId=17461238041&vendorItemId=3180840758&q=프로틴&itemsCount=36&searchId=08e6407f6c3c4e40a8af0939ba39737c&rank=1&searchRank=1&isAddedCart=',
                                      ),
                                      child: Stack(
                                        children: [
                                          PositionedDirectional(
                                            top: 0,
                                            start: 0,
                                            end: 0,
                                            height: converter.h(
                                              140,
                                            ),
                                            child: PhysicalModel(
                                              color: const Color(0xFF000000)
                                                  .withOpacity(
                                                0.05,
                                              ),
                                              child:
                                                  Assets.image.imgProduct.image(
                                                alignment: Alignment.center,
                                                fit: BoxFit.contain,
                                                width: converter.w(
                                                  140,
                                                ),
                                                height: converter.h(
                                                  140,
                                                ),
                                              ),
                                            ),
                                          ),
                                          PositionedDirectional(
                                            top: converter.h(
                                              148,
                                            ),
                                            start: 0,
                                            end: 0,
                                            height: converter.h(
                                              18,
                                            ),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'BSN',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  height: 1.5,
                                                  fontSize: App.instance.overlay
                                                      .relativeScreenHeight(
                                                    12,
                                                  ),
                                                  color: const Color(
                                                    0xFF111111,
                                                  ),
                                                  fontWeight:
                                                      FontWeightAlias.medium,
                                                  letterSpacing: converter.lt(
                                                    fontSize: 12,
                                                    percent: -2,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          PositionedDirectional(
                                            top: converter.h(
                                              166,
                                            ),
                                            start: 0,
                                            end: 0,
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                '신타-6 프로틴 파우더 드링크 믹스 단백질 보충제 초콜릿 밀크셰이크, 2.27kg, 1개',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  height: 1.5,
                                                  fontSize: App.instance.overlay
                                                      .relativeScreenHeight(
                                                    12,
                                                  ),
                                                  color: const Color(
                                                    0xFF888888,
                                                  ),
                                                  fontWeight:
                                                      FontWeightAlias.regular,
                                                  letterSpacing: converter.lt(
                                                    fontSize: 12,
                                                    percent: -2,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          PositionedDirectional(
                                            bottom: converter.h(
                                              25,
                                            ),
                                            start: 0,
                                            end: 0,
                                            height: converter.h(
                                              21,
                                            ),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                '75,150원',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  height: 1.5,
                                                  fontSize: App.instance.overlay
                                                      .relativeScreenHeight(
                                                    14,
                                                  ),
                                                  color: const Color(
                                                    0xFF111111,
                                                  ),
                                                  fontWeight:
                                                      FontWeightAlias.medium,
                                                  letterSpacing: converter.lt(
                                                    fontSize: 14,
                                                    percent: -2,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          PositionedDirectional(
                                            bottom: 0,
                                            start: 0,
                                            end: 0,
                                            height: converter.h(
                                              21,
                                            ),
                                            child: Row(
                                              children: [
                                                DecoratedBox(
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color(
                                                      0xFFF1F5FD,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: converter.w(
                                                        4,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '#로켓직구',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          height: 1.5,
                                                          fontSize: App
                                                              .instance.overlay
                                                              .relativeScreenHeight(
                                                            11,
                                                          ),
                                                          color: const Color(
                                                            0xFF111111,
                                                          ),
                                                          fontWeight:
                                                              FontWeightAlias
                                                                  .regular,
                                                          letterSpacing:
                                                              converter.lt(
                                                            fontSize: 11,
                                                            percent: -2,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                VerticalDivider(
                                                  color: Colors.transparent,
                                                  width: converter.w(
                                                    4,
                                                  ),
                                                  thickness: 0,
                                                ),
                                                DecoratedBox(
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color(
                                                      0xFFF1F5FD,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: converter.w(
                                                        4,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '#프로틴',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          height: 1.5,
                                                          fontSize: App
                                                              .instance.overlay
                                                              .relativeScreenHeight(
                                                            11,
                                                          ),
                                                          color: const Color(
                                                            0xFF111111,
                                                          ),
                                                          fontWeight:
                                                              FontWeightAlias
                                                                  .regular,
                                                          letterSpacing:
                                                              converter.lt(
                                                            fontSize: 11,
                                                            percent: -2,
                                                          ),
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
                                ),
                              ],
                            ),
                          ),
                        ),
                        const BysonSeparator(
                          designWidth: 335,
                          designHeight: 8,
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: const Color(
                                0xFFE5E5EC,
                              ),
                              width: App.instance.overlay.relativeScreenWidth(
                                1,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(
                              App.instance.overlay.relativeScreenWidth(
                                8,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  App.instance.overlay.relativeScreenWidth(
                                20,
                              ),
                              vertical:
                                  App.instance.overlay.relativeScreenHeight(
                                24,
                              ),
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '스포츠 영양제 추천',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        14,
                                      ),
                                      color: const Color(
                                        0xFF5D5D5D,
                                      ),
                                      fontWeight: FontWeightAlias.medium,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '운동 수준에 따른 추천',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        20,
                                      ),
                                      color: const Color(
                                        0xFF344BC1,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '이윤구님의 운동 수준에 적합한 기능성 보충제를 추천드립니다.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        12,
                                      ),
                                      color: const Color(
                                        0xFF888888,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                      App.instance.overlay.relativeScreenHeight(
                                    24,
                                  ),
                                  thickness: 0,
                                ),
                                GridView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: App.instance.overlay
                                        .relativeScreenHeight(
                                      24,
                                    ),
                                    crossAxisSpacing: App.instance.overlay
                                        .relativeScreenWidth(
                                      16,
                                    ),
                                    childAspectRatio: 140 / 270,
                                  ),
                                  itemCount: 4,
                                  itemBuilder: (context, index) =>
                                      BysonAspectRatio(
                                    designWidth: 140,
                                    designHeight: 270,
                                    builder: (converter) =>
                                        BysonCupertinoButton.solid(
                                      onPressed: () => launchUrlString(
                                        'https://www.coupang.com/vp/products/8203767283?itemId=17461238041&vendorItemId=3180840758&q=프로틴&itemsCount=36&searchId=08e6407f6c3c4e40a8af0939ba39737c&rank=1&searchRank=1&isAddedCart=',
                                      ),
                                      child: Stack(
                                        children: [
                                          PositionedDirectional(
                                            top: 0,
                                            start: 0,
                                            end: 0,
                                            height: converter.h(
                                              140,
                                            ),
                                            child: PhysicalModel(
                                              color: const Color(0xFF000000)
                                                  .withOpacity(
                                                0.05,
                                              ),
                                              child:
                                                  Assets.image.imgProduct.image(
                                                alignment: Alignment.center,
                                                fit: BoxFit.contain,
                                                width: converter.w(
                                                  140,
                                                ),
                                                height: converter.h(
                                                  140,
                                                ),
                                              ),
                                            ),
                                          ),
                                          PositionedDirectional(
                                            top: converter.h(
                                              148,
                                            ),
                                            start: 0,
                                            end: 0,
                                            height: converter.h(
                                              18,
                                            ),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'BSN',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  height: 1.5,
                                                  fontSize: App.instance.overlay
                                                      .relativeScreenHeight(
                                                    12,
                                                  ),
                                                  color: const Color(
                                                    0xFF111111,
                                                  ),
                                                  fontWeight:
                                                      FontWeightAlias.medium,
                                                  letterSpacing: converter.lt(
                                                    fontSize: 12,
                                                    percent: -2,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          PositionedDirectional(
                                            top: converter.h(
                                              166,
                                            ),
                                            start: 0,
                                            end: 0,
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                '신타-6 프로틴 파우더 드링크 믹스 단백질 보충제 초콜릿 밀크셰이크, 2.27kg, 1개',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  height: 1.5,
                                                  fontSize: App.instance.overlay
                                                      .relativeScreenHeight(
                                                    12,
                                                  ),
                                                  color: const Color(
                                                    0xFF888888,
                                                  ),
                                                  fontWeight:
                                                      FontWeightAlias.regular,
                                                  letterSpacing: converter.lt(
                                                    fontSize: 12,
                                                    percent: -2,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          PositionedDirectional(
                                            bottom: converter.h(
                                              25,
                                            ),
                                            start: 0,
                                            end: 0,
                                            height: converter.h(
                                              21,
                                            ),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                '75,150원',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  height: 1.5,
                                                  fontSize: App.instance.overlay
                                                      .relativeScreenHeight(
                                                    14,
                                                  ),
                                                  color: const Color(
                                                    0xFF111111,
                                                  ),
                                                  fontWeight:
                                                      FontWeightAlias.medium,
                                                  letterSpacing: converter.lt(
                                                    fontSize: 14,
                                                    percent: -2,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          PositionedDirectional(
                                            bottom: 0,
                                            start: 0,
                                            end: 0,
                                            height: converter.h(
                                              21,
                                            ),
                                            child: Row(
                                              children: [
                                                DecoratedBox(
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color(
                                                      0xFFF1F5FD,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: converter.w(
                                                        4,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '#로켓직구',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          height: 1.5,
                                                          fontSize: App
                                                              .instance.overlay
                                                              .relativeScreenHeight(
                                                            11,
                                                          ),
                                                          color: const Color(
                                                            0xFF111111,
                                                          ),
                                                          fontWeight:
                                                              FontWeightAlias
                                                                  .regular,
                                                          letterSpacing:
                                                              converter.lt(
                                                            fontSize: 11,
                                                            percent: -2,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                VerticalDivider(
                                                  color: Colors.transparent,
                                                  width: converter.w(
                                                    4,
                                                  ),
                                                  thickness: 0,
                                                ),
                                                DecoratedBox(
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color(
                                                      0xFFF1F5FD,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: converter.w(
                                                        4,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '#프로틴',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          height: 1.5,
                                                          fontSize: App
                                                              .instance.overlay
                                                              .relativeScreenHeight(
                                                            11,
                                                          ),
                                                          color: const Color(
                                                            0xFF111111,
                                                          ),
                                                          fontWeight:
                                                              FontWeightAlias
                                                                  .regular,
                                                          letterSpacing:
                                                              converter.lt(
                                                            fontSize: 11,
                                                            percent: -2,
                                                          ),
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
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  bottomNavigationBar: SafeArea(
                    child: BysonAspectRatio.padding(
                      designWidth: designWidth,
                      designHeight: 16 + 60 + 16,
                      designPadding: const EdgeInsets.only(
                        top: 16,
                        left: 20,
                        right: 20,
                        bottom: 16,
                      ),
                      builder: (converter) => BysonCupertinoButton.solid(
                        onPressed: () => App.instance.navigator.pop(),
                        color: const Color(
                          0xFF303F9F,
                        ),
                        borderRadius: BorderRadius.all(
                          converter.radius(
                            12,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '제품 추천 완료',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              // height: 1.5,
                              fontSize: converter.h(
                                18,
                              ),
                              color: Colors.white,
                              fontWeight: FontWeightAlias.regular,
                              letterSpacing: converter.lt(
                                fontSize: 18,
                                percent: -2,
                              ),
                            ),
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
      );

  Widget _buildExpansionTile({
    required BuildContext context,
    required String title,
    String description = '단백질 보충제는 근육 회복과 성장을 위해 필수적인 보충제입니다. 운동 후에 섭취하세요.',
    List<String> options = const [
      '주요 기능: 근육 성장 촉진, 운동 후 회복',
      '권장 섭취량: 20-40g / day (체중에 따라)',
      '부작용: 신장 부담, 복부 팽만감',
      '주의사항: 신장 질환 환자 섭취 주의',
    ],
    bool initiallyExpanded = false,
  }) =>
      Theme(
        data: Theme.of(
          context,
        ).copyWith(
          dividerColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
        ),
        child: ListTileTheme(
          minVerticalPadding: 0,
          contentPadding: EdgeInsets.zero,
          selectedColor: Colors.white,
          selectedTileColor: Colors.white,
          child: ExpansionTile(
            minTileHeight: 0,
            initiallyExpanded: initiallyExpanded,
            tilePadding: EdgeInsets.zero,
            childrenPadding: EdgeInsets.zero,
            title: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                textAlign: TextAlign.start,
                style: TextStyle(
                  height: 1.5,
                  fontSize: App.instance.overlay.relativeScreenHeight(
                    16,
                  ),
                  color: const Color(
                    0xFF111111,
                  ),
                  fontWeight: FontWeightAlias.semiBold,
                  letterSpacing: 0,
                ),
              ),
            ),
            children: [
              Divider(
                color: Colors.transparent,
                height: App.instance.overlay.relativeScreenHeight(
                  4,
                ),
                thickness: 0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  description,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: App.instance.overlay.relativeScreenHeight(
                      12,
                    ),
                    color: const Color(
                      0xFF888888,
                    ),
                    fontWeight: FontWeightAlias.regular,
                    letterSpacing: 0,
                  ),
                ),
              ),
              Divider(
                color: Colors.transparent,
                height: App.instance.overlay.relativeScreenHeight(
                  8,
                ),
                thickness: 0,
              ),
              ListView.separated(
                shrinkWrap: true,
                itemCount: options.length,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => const BysonSeparator(
                  designWidth: 295,
                  designHeight: 8,
                ),
                itemBuilder: (context, index) => Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '• ${options[index]}',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      height: 1.5,
                      fontSize: App.instance.overlay.relativeScreenHeight(
                        12,
                      ),
                      color: const Color(
                        0xFF111111,
                      ),
                      fontWeight: FontWeightAlias.regular,
                      letterSpacing: 0,
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.transparent,
                height: App.instance.overlay.relativeScreenHeight(
                  24,
                ),
                thickness: 0,
              ),
            ],
          ),
        ),
      );
}
