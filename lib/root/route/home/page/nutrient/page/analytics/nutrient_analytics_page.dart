import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/constant/values.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/model/local/practice.dart';
import 'package:app/root/route/home/page/nutrient/page/analytics/nutrient_analytics_bloc.dart';
import 'package:app/root/route/home/page/practice/page/analytics/practice_analytics_bloc.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_do/practice_do_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:byson_switcher/byson_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:intl/intl.dart';

class NutrientAnalyticsPage extends StatelessWidget {
  const NutrientAnalyticsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => NutrientAnalyticsBloc(),
        child: Builder(
          builder: (context) => SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.symmetric(
              vertical: App.instance.overlay.relativeScreenHeight(
                32,
              ),
            ),
            child: Column(
              children: [
                BysonAspectRatio(
                  designWidth: designWidth,
                  designHeight: 49,
                  builder: (converter) => Stack(
                    children: [
                      PositionedDirectional(
                        top: 0,
                        start: converter.w(
                          20,
                        ),
                        height: converter.h(
                          24,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '체중 변화 그래프',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              height: 1.2,
                              fontSize: converter.h(
                                20,
                              ),
                              color: const Color(
                                0xFF111111,
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
                        bottom: 0,
                        start: converter.w(
                          20,
                        ),
                        height: converter.h(
                          21,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '최근 7일 간의 체중 변화 기록입니다.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              height: 1.5,
                              fontSize: converter.h(
                                14,
                              ),
                              color: const Color(
                                0xFF888888,
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
                      PositionedDirectional(
                        bottom: 0,
                        end: converter.w(
                          20,
                        ),
                        height: converter.h(
                          18,
                        ),
                        child: BysonCupertinoButton.solid(
                          onPressed: () => App.instance.navigator.push(
                            Routes.nutrientRecordHistory.path,
                          ),
                          minSize: 0,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '전체보기',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  // height: 1.5,
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
                              VerticalDivider(
                                color: Colors.transparent,
                                width: converter.w(
                                  4,
                                ),
                                thickness: 0,
                              ),
                              Icon(
                                IconsaxPlusLinear.arrow_right_3,
                                color: const Color(
                                  0xFF888888,
                                ),
                                size: converter.w(
                                  12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const BysonSeparator(
                  designWidth: designWidth,
                  designHeight: 17,
                ),
                BysonAspectRatio.padding(
                  designWidth: designWidth,
                  designHeight: 342,
                  designPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  builder: (converter) => Container(
                    color: Colors.red,
                  ),
                ),
                const BysonSeparator(
                  designWidth: designWidth,
                  designHeight: 17,
                ),
                BysonAspectRatio.padding(
                  designWidth: designWidth,
                  designHeight: 107,
                  innerDecoration: (converter) => BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      converter.radius(
                        16,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(
                          converter.w(
                            2,
                          ),
                          converter.h(
                            4,
                          ),
                        ),
                        spreadRadius: 0,
                        blurRadius: converter.average(
                          12,
                        ),
                        color: Colors.black.withOpacity(
                          0.04,
                        ),
                      ),
                    ],
                  ),
                  designPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  builder: (converter) => BysonCupertinoButton.solid(
                    onPressed: () => App.instance.navigator.push(
                      Routes.sign.path,
                    ),
                    child: Stack(
                      children: [
                        PositionedDirectional(
                          top: converter.h(
                            24,
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
                              '나의 체중',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                height: 1.5,
                                fontSize: converter.h(
                                  14,
                                ),
                                color: const Color(
                                  0xFF111111,
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
                        PositionedDirectional(
                          bottom: converter.h(
                            24,
                          ),
                          start: converter.w(
                            16,
                          ),
                          height: converter.h(
                            34,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '81.8kg',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                height: 1.2,
                                fontSize: converter.h(
                                  28,
                                ),
                                color: const Color(
                                  0xFF344BC1,
                                ),
                                fontWeight: FontWeightAlias.semiBold,
                                letterSpacing: converter.lt(
                                  fontSize: 28,
                                  percent: -2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          bottom: converter.h(
                            24,
                          ),
                          end: converter.w(
                            20,
                          ),
                          height: converter.h(
                            18,
                          ),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '최근 업데이트 ${DateFormat('yy.MM.dd').format(DateTime.now())}',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                height: 1.5,
                                fontSize: converter.h(
                                  12,
                                ),
                                color: const Color(
                                  0xFF5D5D5D,
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
                      ],
                    ),
                  ),
                ),
                const BysonSeparator(
                  designWidth: designWidth,
                  designHeight: 17,
                ),
                BysonAspectRatio.padding(
                  designWidth: designWidth,
                  designHeight: 172,
                  designPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  builder: (converter) => Stack(
                    children: [
                      PositionedDirectional(
                        start: 0,
                        top: 0,
                        bottom: 0,
                        width: converter.w(
                          160,
                        ),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              converter.radius(
                                16,
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(
                                  converter.w(
                                    2,
                                  ),
                                  converter.h(
                                    4,
                                  ),
                                ),
                                spreadRadius: 0,
                                blurRadius: converter.average(
                                  12,
                                ),
                                color: Colors.black.withOpacity(
                                  0.04,
                                ),
                              ),
                            ],
                          ),
                          child: BysonCupertinoButton.solid(
                            onPressed: () => App.instance.navigator
                                .push(
                              Routes.nutrientAnalyticsChoice.path,
                            )
                                .then(
                              (value) {
                                if (value == true) {
                                  App.instance.navigator
                                      .push(
                                    Routes.nutrientAnalyticsInput.path,
                                  )
                                      .then(
                                    (value) {
                                      if (value == true) {
                                        App.instance.navigator.push(
                                          Routes.nutrientAnalyticsReport.path,
                                        );
                                      }
                                    },
                                  );
                                } else if (value == false) {
                                  App.instance.navigator.push(
                                    Routes.nutrientAnalyticsReport.path,
                                  );
                                } else {
                                  //
                                }
                              },
                            ),
                            child: Stack(
                              children: [
                                PositionedDirectional(
                                  top: converter.h(
                                    20,
                                  ),
                                  start: converter.w(
                                    16,
                                  ),
                                  height: converter.h(
                                    21,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '영양분석 리포트',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        height: 1.5,
                                        fontSize: converter.h(
                                          14,
                                        ),
                                        color: const Color(
                                          0xFF888888,
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
                                PositionedDirectional(
                                  top: converter.h(
                                    45,
                                  ),
                                  start: converter.w(
                                    16,
                                  ),
                                  height: converter.h(
                                    24,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '분석 보러가기',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        height: 1.2,
                                        fontSize: converter.h(
                                          20,
                                        ),
                                        color: const Color(
                                          0xFF111111,
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
                                    20,
                                  ),
                                  end: converter.w(
                                    16,
                                  ),
                                  width: converter.w(
                                    64,
                                  ),
                                  height: converter.h(
                                    64,
                                  ),
                                  child: Assets.image.imgAnalytics.image(
                                    width: converter.w(
                                      64,
                                    ),
                                    height: converter.h(
                                      64,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        end: 0,
                        top: 0,
                        bottom: 0,
                        width: converter.w(
                          160,
                        ),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              converter.radius(
                                16,
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(
                                  converter.w(
                                    2,
                                  ),
                                  converter.h(
                                    4,
                                  ),
                                ),
                                spreadRadius: 0,
                                blurRadius: converter.average(
                                  12,
                                ),
                                color: Colors.black.withOpacity(
                                  0.04,
                                ),
                              ),
                            ],
                          ),
                          child: BysonCupertinoButton.solid(
                            onPressed: () => App.instance.navigator.push(
                              Routes.recommendation.path,
                            ),
                            child: Stack(
                              children: [
                                PositionedDirectional(
                                  top: converter.h(
                                    20,
                                  ),
                                  start: converter.w(
                                    16,
                                  ),
                                  height: converter.h(
                                    21,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '제품 추천',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        height: 1.5,
                                        fontSize: converter.h(
                                          14,
                                        ),
                                        color: const Color(
                                          0xFF888888,
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
                                PositionedDirectional(
                                  top: converter.h(
                                    45,
                                  ),
                                  start: converter.w(
                                    16,
                                  ),
                                  height: converter.h(
                                    24,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '보충제, 뭐 먹지?',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        height: 1.2,
                                        fontSize: converter.h(
                                          20,
                                        ),
                                        color: const Color(
                                          0xFF111111,
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
                                    20,
                                  ),
                                  end: converter.w(
                                    16,
                                  ),
                                  width: converter.w(
                                    64,
                                  ),
                                  height: converter.h(
                                    64,
                                  ),
                                  child: Assets.image.imgProteins.image(
                                    width: converter.w(
                                      64,
                                    ),
                                    height: converter.h(
                                      64,
                                    ),
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
              ],
            ),
          ),
        ),
      );
}
