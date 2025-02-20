import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/constant/values.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/model/local/practice.dart';
import 'package:app/root/route/home/page/practice/page/analytics/practice_analytics_bloc.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_do/practice_do_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:byson_switcher/byson_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:intl/intl.dart';

class PracticeAnalyticsPage extends StatelessWidget {
  const PracticeAnalyticsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => PracticeAnalyticsBloc(),
        child: Builder(
          builder: (context) => SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.symmetric(
              vertical: App.instance.overlay.relativeScreenHeight(
                16,
              ),
            ),
            child: Column(
              children: [
                BysonAspectRatio(
                  designWidth: designWidth,
                  designHeight: 61,
                  builder: (converter) => Stack(
                    children: [
                      PositionedDirectional(
                        top: converter.h(
                          12,
                        ),
                        start: converter.w(
                          20,
                        ),
                        height: converter.h(
                          24,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '운동 볼륨 그래프',
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
                    ],
                  ),
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
                      Routes.threePractice.path,
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
                              '나의 3대 운동 중량',
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
                              '640kg',
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
                            onPressed: () => App.instance.navigator.push(
                              Routes.practiceAnalyticsChoice.path,
                            ).then(
                              (value) {

                                if (value == true) {
                                  App.instance.navigator.push(
                                    Routes.practiceAnalyticsInput.path,
                                  ).then(
                                        (value) {

                                      if (value == true) {
                                        App.instance.navigator.push(
                                          Routes.practiceAnalyticsReport.path,
                                        );
                                      }
                                    },
                                  );
                                } else if (value == false) {
                                  App.instance.navigator.push(
                                    Routes.practiceAnalyticsReport.path,
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
                                      '운동분석 리포트',
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
