import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/modal/dashed_line_painter.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/modal/practice_analytics_report_detail_sheet.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/practice_analytics_report_bloc.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/page/record_chart/record_chart_route.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/page/volume_chart/volume_chart_bloc.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/page/volume_chart/volume_chart_event.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/page/volume_chart/volume_chart_route.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/widgets/exercise_info_widget.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/widgets/performance_chart.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/widgets/three_exercise.dart';
import 'package:app/root/route/home/page/practice/widget/practice_chip.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class PracticeAnalyticsReportRoute extends StatelessWidget {
  const PracticeAnalyticsReportRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        // lazy: false,
        create: (context) => PracticeAnalyticsReportBloc()
          ..add(
            const PracticeAnalyticsReportEvent.initialize(),
          ),
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
                      Center(
                        child: Text(
                          '운동분석',
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
              controller:
                  context.read<PracticeAnalyticsReportBloc>().pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
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
                            '운동 정보를\n분석하고 있습니다.',
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
                // Scaffold(
                //   backgroundColor: Colors.transparent,
                //   body: Center(
                //     child: BysonAspectRatio(
                //       designWidth: designWidth,
                //       designHeight: 190,
                //       builder: (converter) => Stack(
                //         children: [
                //           PositionedDirectional(
                //             top: 0,
                //             start: converter.hcx(
                //               100,
                //             ),
                //             width: converter.w(
                //               100,
                //             ),
                //             height: converter.h(
                //               100,
                //             ),
                //             child: Assets.image.imgAnalyticsDone.image(
                //               alignment: Alignment.center,
                //               fit: BoxFit.contain,
                //               width: converter.w(
                //                 100,
                //               ),
                //               height: converter.h(
                //                 100,
                //               ),
                //             ),
                //           ),
                //           Align(
                //             alignment: Alignment.bottomCenter,
                //             child: Text(
                //               '운동 정보의\n분석이 완료되었습니다.',
                //               textAlign: TextAlign.center,
                //               style: TextStyle(
                //                 height: 1.2,
                //                 fontSize: converter.h(
                //                   24,
                //                 ),
                //                 color: const Color(
                //                   0xFF5D5D5D,
                //                 ),
                //                 fontWeight: FontWeightAlias.semiBold,
                //                 letterSpacing: converter.lt(
                //                   fontSize: 24,
                //                   percent: -2,
                //                 ),
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                //   bottomNavigationBar: SafeArea(
                //     child: BysonAspectRatio.padding(
                //       designWidth: designWidth,
                //       designHeight: 16 + 60 + 16,
                //       designPadding: const EdgeInsets.only(
                //         top: 16,
                //         left: 20,
                //         right: 20,
                //         bottom: 16,
                //       ),
                //       builder: (converter) => BysonCupertinoButton.solid(
                //         onPressed: () => context
                //             .read<PracticeAnalyticsReportBloc>()
                //             .pageController
                //             .nextPage(
                //               duration: defaultAnimationDuration,
                //               curve: defaultAnimationCurve,
                //             ),
                //         color: const Color(
                //           0xFF303F9F,
                //         ),
                //         borderRadius: BorderRadius.all(
                //           converter.radius(
                //             12,
                //           ),
                //         ),
                //         child: Center(
                //           child: Text(
                //             '분석결과 보러가기',
                //             textAlign: TextAlign.center,
                //             style: TextStyle(
                //               // height: 1.5,
                //               fontSize: converter.h(
                //                 18,
                //               ),
                //               color: Colors.white,
                //               fontWeight: FontWeightAlias.regular,
                //               letterSpacing: converter.lt(
                //                 fontSize: 18,
                //                 percent: -2,
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                Scaffold(
                  backgroundColor: Colors.transparent,
                  body: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                      horizontal: App.instance.overlay.relativeScreenWidth(
                        20,
                      ),
                      vertical: App.instance.overlay.relativeScreenHeight(
                        24,
                      ),
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color(
                            0xFFE5E5EC,
                          ),
                          width: App.instance.overlay.relativeScreenHeight(
                            1,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(
                          App.instance.overlay.relativeScreenHeight(
                            12,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: App.instance.overlay.relativeScreenHeight(
                            16,
                          ),
                          bottom: App.instance.overlay.relativeScreenHeight(
                            16,
                          ),
                          left: App.instance.overlay.relativeScreenWidth(
                            20,
                          ),
                          right: App.instance.overlay.relativeScreenWidth(
                            20,
                          ),
                        ),
                        child: Column(
                          children: [
                            BysonAspectRatio(
                                designWidth: designWidth,
                                designHeight: designHeight,
                                builder: (converter) => Stack(
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            BysonAspectRatio(
                                              designWidth: 295,
                                              designHeight: 95,
                                              // decoration: (converter) =>
                                              //     BoxDecoration(
                                              //   border: Border(
                                              //     bottom: BorderSide(
                                              //       color: const Color(
                                              //         0xFFE5E5EC,
                                              //       ),
                                              //       width: converter.h(
                                              //         1,
                                              //       ),
                                              //     ),
                                              //   ),
                                              // ),
                                              builder: (converter) => Stack(
                                                children: [
                                                  PositionedDirectional(
                                                    top: 0,
                                                    start: 0,
                                                    height: converter.h(
                                                      21,
                                                    ),
                                                    child: Text(
                                                      '운동 분석 리포트1',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        height: 1.5,
                                                        fontSize: converter.h(
                                                          14,
                                                        ),
                                                        color: const Color(
                                                          0xFF111111,
                                                        ),
                                                        fontWeight:
                                                            FontWeightAlias
                                                                .medium,
                                                        letterSpacing:
                                                            converter.lt(
                                                          fontSize: 21,
                                                          percent: -2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  PositionedDirectional(
                                                    top: converter.h(21),
                                                    start: 0,
                                                    height: converter.h(
                                                      30,
                                                    ),
                                                    child: Text(
                                                      '운동 수준 총평',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        // height: 1.5,
                                                        fontSize: converter.h(
                                                          20,
                                                        ),
                                                        color: const Color(
                                                          0xFF111111,
                                                        ),
                                                        fontWeight:
                                                            FontWeightAlias
                                                                .semiBold,
                                                        letterSpacing:
                                                            converter.lt(
                                                          fontSize: 30,
                                                          percent: -2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  PositionedDirectional(
                                                      top: converter.h(59),
                                                      start: 0,
                                                      height: 36,
                                                      child: Text(
                                                        '이윤구님의 운동 수준은 상위 91.1%로 추정됩니다. \n자세한 계산방법은 상세보기를 눌러 알아보세요',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                            height: 0,
                                                            fontSize:
                                                                converter.h(12),
                                                            color: const Color(
                                                                0xFF111111),
                                                            fontWeight:
                                                                FontWeightAlias
                                                                    .light,
                                                            letterSpacing:
                                                                converter.lt(
                                                                    percent: -2,
                                                                    fontSize:
                                                                        18)),
                                                      )),
                                                  PositionedDirectional(
                                                    top: converter.h(
                                                      0,
                                                    ),
                                                    end: 0,
                                                    height: converter.h(
                                                      18,
                                                    ),
                                                    child: BysonCupertinoButton
                                                        .solid(
                                                      onPressed: () {
                                                        PracticeAnalyticsReportDetailSheet
                                                            .show(
                                                          context: context,
                                                        );
                                                      },
                                                      minSize: 0,
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            // practiceList[0].name,
                                                            '상세보기',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: TextStyle(
                                                              // height: 1.5,
                                                              fontSize:
                                                                  converter.h(
                                                                12,
                                                              ),
                                                              color:
                                                                  const Color(
                                                                0xFF888888,
                                                              ),
                                                              fontWeight:
                                                                  FontWeightAlias
                                                                      .regular,
                                                              letterSpacing:
                                                                  converter.lt(
                                                                fontSize: 12,
                                                                percent: -2,
                                                              ),
                                                            ),
                                                          ),
                                                          VerticalDivider(
                                                            color: Colors
                                                                .transparent,
                                                            width: converter.w(
                                                              4,
                                                            ),
                                                            thickness: 0,
                                                          ),
                                                          Icon(
                                                            IconsaxPlusLinear
                                                                .arrow_right_3,
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
                                                  PositionedDirectional(
                                                    top: converter.h(105),
                                                    start: 0,
                                                    height: converter.h(
                                                      30,
                                                    ),
                                                    child: Text(
                                                      '운동점수',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        // height: 1.5,
                                                        fontSize: converter.h(
                                                          20,
                                                        ),
                                                        color: const Color(
                                                          0xFF111111,
                                                        ),
                                                        fontWeight:
                                                            FontWeightAlias
                                                                .semiBold,
                                                        letterSpacing:
                                                            converter.lt(
                                                          fontSize: 30,
                                                          percent: -2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const BysonSeparator(
                                                designWidth: designWidth,
                                                designHeight: 24),
                                            BysonAspectRatio(
                                                designWidth: 295,
                                                designHeight: 68,
                                                builder: (converter) => Stack(
                                                      children: [
                                                        Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Divider(
                                                            indent:
                                                                converter.w(0),
                                                            endIndent:
                                                                converter.w(0),
                                                            color: const Color(
                                                                0xFFE5E5EC),
                                                            height:
                                                                converter.h(1),
                                                            thickness:
                                                                converter.h(1),
                                                          ),
                                                        ),
                                                        PositionedDirectional(
                                                            top:
                                                                converter.h(16),
                                                            start: converter
                                                                .w(30.5),
                                                            child: Text(
                                                              '운동점수',
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      converter
                                                                          .h(14)),
                                                            )),
                                                        PositionedDirectional(
                                                            top: converter
                                                                .h(16 + 21 + 4),
                                                            start:
                                                                converter.w(37),
                                                            child: Text(
                                                              '91점',
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      converter
                                                                          .h(18)),
                                                            )),
                                                        PositionedDirectional(
                                                            top:
                                                                converter.h(16),
                                                            start: converter
                                                                .w(123.5),
                                                            child:
                                                                Text('운동수준')),
                                                        PositionedDirectional(
                                                            top: converter
                                                                .h(16 + 21 + 4),
                                                            start: converter
                                                                .w(124.5),
                                                            child: Text(
                                                              '고급자',
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      converter
                                                                          .h(18)),
                                                            )),
                                                        PositionedDirectional(
                                                            top:
                                                                converter.h(16),
                                                            end: converter
                                                                .w(30.5),
                                                            child:
                                                                Text('3대 중량')),
                                                        PositionedDirectional(
                                                            top: converter
                                                                .h(16 + 21 + 4),
                                                            end:
                                                                converter.w(27),
                                                            child: Text(
                                                              '620kg',
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      converter
                                                                          .h(18)),
                                                            )),
                                                      ],
                                                    )),
                                            const BysonSeparator(
                                                designWidth: designWidth,
                                                designHeight: 32),
                                            BysonAspectRatio(
                                                designWidth: 295,
                                                designHeight: 51,
                                                builder: (converter) => Stack(
                                                      children: [
                                                        PositionedDirectional(
                                                          top: 0,
                                                          start: 0,
                                                          height:
                                                              converter.h(21),
                                                          child: Text(
                                                            '운동 분석 리포트2',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: TextStyle(
                                                              height: 1.5,
                                                              fontSize:
                                                                  converter.h(
                                                                14,
                                                              ),
                                                              color:
                                                                  const Color(
                                                                0xFF111111,
                                                              ),
                                                              fontWeight:
                                                                  FontWeightAlias
                                                                      .medium,
                                                              letterSpacing:
                                                                  converter.lt(
                                                                fontSize: 21,
                                                                percent: -2,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        PositionedDirectional(
                                                          top: converter.h(21),
                                                          start: 0,
                                                          height:
                                                              converter.h(30),
                                                          child: Text(
                                                            '나의 3대 운동 중량',
                                                            style: TextStyle(
                                                                fontSize:
                                                                    converter
                                                                        .h(20)),
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                            const BysonSeparator(
                                                designWidth: designWidth,
                                                designHeight: 24),
                                            const ThreeExercise(
                                              name: '스쿼트',
                                              bodyPart: '하체',
                                              weight: 240,
                                              rep: 1,
                                            ),
                                            const BysonSeparator(
                                                designWidth: designWidth,
                                                designHeight: 8),
                                            const ThreeExercise(
                                              name: '데드리프트',
                                              bodyPart: '하체',
                                              weight: 240,
                                              rep: 1,
                                            ),
                                            const BysonSeparator(
                                                designWidth: designWidth,
                                                designHeight: 8),
                                            const ThreeExercise(
                                              name: '벤치프레스',
                                              bodyPart: '하체',
                                              weight: 240,
                                              rep: 1,
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                            // BysonAspectRatio(
                            //     designWidth: designWidth,
                            //     designHeight: 655,
                            //     builder: (converter) => Stack(
                            //           children: [
                            //             Column(
                            //               children: [
                            //                 BysonAspectRatio(
                            //                     designWidth: designWidth,
                            //                     designHeight: 10,
                            //                     builder: (converter) => Column(
                            //                           children: [
                            //                             Stack(
                            //                               children: [
                            //                                 //  페이지 중간에 그래프 삽입
                            //                               ],
                            //                             ),
                            //                           ],
                            //                         )),
                            //               ],
                            //             ),
                            //           ],
                            //         )),
                            // ExerciseStatsView(),

                            // BysonAspectRatio(
                            //   designWidth: designWidth,
                            //   designHeight: 680,
                            //   builder: (converter) => BlocProvider(
                            //     // ExerciseStatsBloc을 생성하고 필요한 이벤트를 추가
                            //     create: (context) => VolumeChartBloc()
                            //       ..add(const VolumeChartEvent.load()),
                            //     child: const Stack(children: [
                            //       PositionedDirectional(
                            //         child: VolumeChartView(),
                            //       ),
                            //     ]),
                            //   ),
                            // ),
                            const BysonSeparator(
                                designWidth: designWidth, designHeight: 32),
                            BysonAspectRatio(
                                designWidth: 295,
                                designHeight: 77,
                                builder: (converter) => Stack(
                                      children: [
                                        PositionedDirectional(
                                          top: 0,
                                          start: 0,
                                          height: converter.h(21),
                                          child: Text(
                                            '운동 분석 리포트3',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              height: 1.5,
                                              fontSize: converter.h(
                                                14,
                                              ),
                                              color: const Color(
                                                0xFF111111,
                                              ),
                                              fontWeight:
                                                  FontWeightAlias.medium,
                                              letterSpacing: converter.lt(
                                                fontSize: 21,
                                                percent: -2,
                                              ),
                                            ),
                                          ),
                                        ),
                                        PositionedDirectional(
                                          top: converter.h(21),
                                          start: 0,
                                          height: converter.h(30),
                                          child: Text(
                                            '운동 볼륨 그래프',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              height: 1.5,
                                              fontSize: converter.h(
                                                20,
                                              ),
                                              color: const Color(
                                                0xFF111111,
                                              ),
                                              fontWeight: FontWeightAlias.bold,
                                              letterSpacing: converter.lt(
                                                fontSize: 21,
                                                percent: -2,
                                              ),
                                            ),
                                          ),
                                        ),
                                        PositionedDirectional(
                                          top: converter.h(21 + 30 + 8),
                                          start: 0,
                                          height: converter.h(18),
                                          child: Text(
                                            '최근 이용자님이 기록한 운동 볼륨에 대한 그래프입니다.',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              height: 1.5,
                                              fontSize: converter.h(
                                                12,
                                              ),
                                              color: const Color(
                                                0xFF111111,
                                              ),
                                              fontWeight: FontWeightAlias.light,
                                              letterSpacing: converter.lt(
                                                fontSize: 21,
                                                percent: -2,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                            const BysonSeparator(
                                // decoration: BoxDecoration(color: Colors.red),
                                designWidth: designWidth,
                                designHeight: 10),
                            BysonAspectRatio(
                                designWidth: 295,
                                designHeight: 540,
                                builder: (converter) => Stack(
                                      children: [
                                        BysonAspectRatio(
                                          designWidth: designWidth,
                                          designHeight: converter.h(660),
                                          builder: (converter) => BlocProvider(
                                            // ExerciseStatsBloc을 생성하고 필요한 이벤트를 추가
                                            create: (context) =>
                                                VolumeChartBloc()
                                                  ..add(const VolumeChartEvent
                                                      .load()),
                                            child: const Stack(children: [
                                              PositionedDirectional(
                                                // top: 0,
                                                // height: 660,
                                                // width: designWidth,
                                                child: VolumeChartView(),
                                              ),
                                            ]),
                                          ),
                                        ),
                                      ],
                                    )),
                            const BysonSeparator(
                                designWidth: designWidth, designHeight: 32),
                            BysonAspectRatio(
                                designWidth: 295,
                                designHeight: 95,
                                builder: (converter) => Stack(
                                      children: [
                                        PositionedDirectional(
                                          top: 0,
                                          start: 0,
                                          height: converter.h(21),
                                          child: Text(
                                            '운동 분석 리포트4',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              height: 1.5,
                                              fontSize: converter.h(
                                                14,
                                              ),
                                              color: const Color(
                                                0xFF111111,
                                              ),
                                              fontWeight:
                                                  FontWeightAlias.medium,
                                              letterSpacing: converter.lt(
                                                fontSize: 21,
                                                percent: -2,
                                              ),
                                            ),
                                          ),
                                        ),
                                        PositionedDirectional(
                                          top: converter.h(21),
                                          start: 0,
                                          height: converter.h(30),
                                          child: Text(
                                            '종목별 수행능력에 대한 분석입니다.',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              height: 1.5,
                                              fontSize: converter.h(
                                                20,
                                              ),
                                              color: const Color(
                                                0xFF111111,
                                              ),
                                              fontWeight: FontWeightAlias.bold,
                                              letterSpacing: converter.lt(
                                                fontSize: 21,
                                                percent: -2,
                                              ),
                                            ),
                                          ),
                                        ),
                                        PositionedDirectional(
                                          top: converter.h(21 + 30 + 8),
                                          start: 0,
                                          height: converter.h(36),
                                          child: Text(
                                            '종목별 예상 수행 능력을 추정하여 계산한 결과입니다.\n수행 능력은 몸무게를 기준으로 평가합니다.',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              height: 1.5,
                                              fontSize: converter.h(
                                                12,
                                              ),
                                              color: const Color(
                                                0xFF111111,
                                              ),
                                              fontWeight: FontWeightAlias.light,
                                              letterSpacing: converter.lt(
                                                fontSize: 21,
                                                percent: -2,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                            const BysonSeparator(
                                designWidth: designWidth, designHeight: 16),
                            BysonAspectRatio(
                                designWidth: 295,
                                designHeight: 241,
                                builder: (converter) => Stack(
                                      children: [
                                        // Text('레이더차트'),
                                        CustomRadarChartWidget()
                                      ],
                                    )),
                            const BysonSeparator(
                                designWidth: designWidth, designHeight: 32),
                            BysonAspectRatio(
                                designWidth: 295,
                                designHeight: 264,
                                builder: (converter) => Column(
                                      children: [
                                        BysonAspectRatio(
                                            designWidth: 295,
                                            designHeight: converter.h(24),
                                            builder: (converter) {
                                              return Stack(
                                                children: [
                                                  PositionedDirectional(
                                                    top: 0,
                                                    height: converter.h(24),
                                                    child: Text(
                                                      '수행능력 분석 상세',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        height: 1.5,
                                                        fontSize: converter.h(
                                                          16,
                                                        ),
                                                        color: const Color(
                                                          0xFF111111,
                                                        ),
                                                        fontWeight:
                                                            FontWeightAlias
                                                                .bold,
                                                        letterSpacing:
                                                            converter.lt(
                                                          fontSize: 21,
                                                          percent: -2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            }),
                                        const BysonSeparator(
                                            // decoration: BoxDecoration(
                                            //     color: Colors.red),
                                            designWidth: designWidth,
                                            designHeight: 8),
                                        // BysonAspectRatio(
                                        //     designWidth: 295,
                                        //     designHeight: converter.h(32),
                                        //     builder: (converter) {
                                        //       return Stack(
                                        //         children: [
                                        //           Align(
                                        //             alignment:
                                        //                 Alignment.bottomCenter,
                                        //             child: Divider(
                                        //               indent: converter.w(0),
                                        //               endIndent: converter.w(0),
                                        //               color: const Color(
                                        //                   0xFFE5E5EC),
                                        //               height: converter.h(1),
                                        //               thickness: converter.h(1),
                                        //             ),
                                        //           ),
                                        //           PositionedDirectional(
                                        //             top: 0,
                                        //             start: 0,
                                        //             height: converter.h(24),
                                        //             child: Text(
                                        //               '풀업',
                                        //               textAlign:
                                        //                   TextAlign.start,
                                        //               style: TextStyle(
                                        //                 height: 1.5,
                                        //                 fontSize: converter.h(
                                        //                   16,
                                        //                 ),
                                        //                 color: const Color(
                                        //                   0xFF111111,
                                        //                 ),
                                        //                 fontWeight:
                                        //                     FontWeightAlias
                                        //                         .medium,
                                        //                 letterSpacing:
                                        //                     converter.lt(
                                        //                   fontSize: 21,
                                        //                   percent: -2,
                                        //                 ),
                                        //               ),
                                        //             ),
                                        //           ),
                                        //           PositionedDirectional(
                                        //             top: 0,
                                        //             end: 0,
                                        //             width: converter.w(54),
                                        //             height: converter.h(24),
                                        //             child: Text(
                                        //               '[고급자]',
                                        //               textAlign:
                                        //                   TextAlign.center,
                                        //               style: TextStyle(
                                        //                 height: 1.5,
                                        //                 fontSize: converter.h(
                                        //                   16,
                                        //                 ),
                                        //                 color: const Color(
                                        //                   0xFFDA5DA8,
                                        //                 ),
                                        //                 fontWeight:
                                        //                     FontWeightAlias
                                        //                         .medium,
                                        //                 letterSpacing:
                                        //                     converter.lt(
                                        //                   fontSize: 21,
                                        //                   percent: -2,
                                        //                 ),
                                        //               ),
                                        //             ),
                                        //           ),
                                        //           PositionedDirectional(
                                        //             top: 0,
                                        //             end: converter.w(54 + 8),
                                        //             height: converter.h(24),
                                        //             child: Text(
                                        //               '85회',
                                        //               textAlign:
                                        //                   TextAlign.start,
                                        //               style: TextStyle(
                                        //                 height: 1.5,
                                        //                 fontSize: converter.h(
                                        //                   16,
                                        //                 ),
                                        //                 color: const Color(
                                        //                   0xFF111111,
                                        //                 ),
                                        //                 fontWeight:
                                        //                     FontWeightAlias
                                        //                         .medium,
                                        //                 letterSpacing:
                                        //                     converter.lt(
                                        //                   fontSize: 21,
                                        //                   percent: -2,
                                        //                 ),
                                        //               ),
                                        //             ),
                                        //           ),
                                        //         ],
                                        //       );
                                        //     }),
                                        const ExerciseInfoWidget(
                                          exercise: "풀업",
                                          color: Color(0xFFDA5DA8),
                                          type: "고급자",
                                          count: '85회',
                                        ),
                                        const BysonSeparator(
                                            designWidth: designWidth,
                                            designHeight: 8),
                                        const ExerciseInfoWidget(
                                          exercise: "스쿼트",
                                          color: Color(0xFFE3CD09),
                                          type: "중급자",
                                          count: '85kg',
                                        ),
                                        const BysonSeparator(
                                            designWidth: designWidth,
                                            designHeight: 8),
                                        const ExerciseInfoWidget(
                                          exercise: "바벨 컬",
                                          color: Color(0xFF93C131),
                                          type: "숙련자",
                                          count: '85회',
                                        ),
                                        const BysonSeparator(
                                            designWidth: designWidth,
                                            designHeight: 8),
                                        const ExerciseInfoWidget(
                                          exercise: "데드리프트",
                                          color: Color(0xFF93C131),
                                          type: "숙련자",
                                          count: '85회',
                                        ),
                                        const BysonSeparator(
                                            designWidth: designWidth,
                                            designHeight: 8),
                                        const ExerciseInfoWidget(
                                          exercise: "오버헤드프레스",
                                          color: Color(0xFF93C131),
                                          type: "숙련자",
                                          count: '85kg',
                                        ),
                                        const BysonSeparator(
                                            designWidth: designWidth,
                                            designHeight: 8),
                                        const ExerciseInfoWidget(
                                          exercise: "벤치프레스",
                                          color: Color(0xFF93C131),
                                          type: "숙련자",
                                          count: '85kg',
                                        ),
                                      ],
                                    )),
                            const BysonSeparator(
                                designWidth: designWidth, designHeight: 32),
                            BysonAspectRatio(
                                designWidth: 295,
                                designHeight: 325,
                                builder: (converter) => Column(
                                      children: [
                                        BysonAspectRatio(
                                            designWidth: 295,
                                            designHeight: 50,
                                            builder: (converter) => Stack(
                                                  children: [
                                                    PositionedDirectional(
                                                      top: 0,
                                                      height: converter.h(24),
                                                      child: Text(
                                                        '수행능력 비교',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          height: 1.5,
                                                          fontSize: converter.h(
                                                            16,
                                                          ),
                                                          color: const Color(
                                                            0xFF111111,
                                                          ),
                                                          fontWeight:
                                                              FontWeightAlias
                                                                  .bold,
                                                          letterSpacing:
                                                              converter.lt(
                                                            fontSize: 21,
                                                            percent: -2,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    PositionedDirectional(
                                                      top: converter.h(24 + 8),
                                                      start: 0,
                                                      height: converter.h(18),
                                                      child: Text(
                                                        '몸무게를 기준으로 평균값을 비교한 수행능력입니다.',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          height: 1.5,
                                                          fontSize: converter.h(
                                                            12,
                                                          ),
                                                          color: const Color(
                                                            0xFF111111,
                                                          ),
                                                          fontWeight:
                                                              FontWeightAlias
                                                                  .light,
                                                          letterSpacing:
                                                              converter.lt(
                                                            fontSize: 21,
                                                            percent: -2,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                        const BysonSeparator(
                                            // decoration: BoxDecoration(
                                            //     color: Colors.red),
                                            designWidth: designWidth,
                                            designHeight: 16),
                                        BysonAspectRatio(
                                            designWidth: 295,
                                            designHeight: 259,
                                            builder: (converter) =>
                                                Stack(children: [
                                                  DecoratedBox(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF9F9F9),
                                                        border: Border.all(
                                                          color: const Color(
                                                            0xFFE5E5EC,
                                                          ),
                                                          width: App
                                                              .instance.overlay
                                                              .relativeScreenHeight(
                                                            1,
                                                          ),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          App.instance.overlay
                                                              .relativeScreenHeight(
                                                            12,
                                                          ),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: App
                                                              .instance.overlay
                                                              .relativeScreenHeight(
                                                            0,
                                                          ),
                                                          bottom: App
                                                              .instance.overlay
                                                              .relativeScreenHeight(
                                                            0,
                                                          ),
                                                          left: App
                                                              .instance.overlay
                                                              .relativeScreenWidth(
                                                            16,
                                                          ),
                                                          right: App
                                                              .instance.overlay
                                                              .relativeScreenWidth(
                                                            16,
                                                          ),
                                                        ),
                                                        child: Column(
                                                          children: [
                                                            BysonAspectRatio(
                                                                designWidth:
                                                                    295,
                                                                designHeight:
                                                                    34,
                                                                builder:
                                                                    (converter) =>
                                                                        Stack(
                                                                          children: [
                                                                            PositionedDirectional(
                                                                                top: converter.h(19),
                                                                                // start: converter.w(16),
                                                                                child: Row(
                                                                                  children: [
                                                                                    Container(
                                                                                      width: converter.w(12),
                                                                                      height: converter.w(12),
                                                                                      color: Color(0xFFDE6E6A),
                                                                                    ),
                                                                                    VerticalDivider(
                                                                                        color: Colors.transparent,
                                                                                        width: converter.w(
                                                                                          4,
                                                                                        )),
                                                                                    Text(
                                                                                      'User',
                                                                                      textAlign: TextAlign.start,
                                                                                      style: TextStyle(
                                                                                        // height: 18,
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
                                                                                    VerticalDivider(
                                                                                        color: Colors.transparent,
                                                                                        width: converter.w(
                                                                                          8,
                                                                                        )),
                                                                                    Container(
                                                                                      width: converter.w(12),
                                                                                      height: converter.w(12),
                                                                                      color: Color(0xFF9EA3B2),
                                                                                    ),
                                                                                    VerticalDivider(
                                                                                        color: Colors.transparent,
                                                                                        width: converter.w(
                                                                                          4,
                                                                                        )),
                                                                                    Text(
                                                                                      'Average',
                                                                                      textAlign: TextAlign.start,
                                                                                      style: TextStyle(
                                                                                        // height: 18,
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
                                                                                  ],
                                                                                )),
                                                                            // PositionedDirectional(top: converter.h(50), start: converter.w(16), height: converter.h(168), width: converter.w(263), child: Text('data'))
                                                                          ],
                                                                        )),
                                                            BysonSeparator(
                                                                designWidth:
                                                                    designWidth,
                                                                designHeight:
                                                                    16),
                                                            // BysonAspectRatio(
                                                            //     designWidth:
                                                            //         295,
                                                            //     designHeight:
                                                            //         36,
                                                            //     builder:
                                                            //         (converter) =>
                                                            //             Stack(
                                                            //               children: [
                                                            //                 Container(
                                                            //                     // color: Colors.red,
                                                            //                     ),
                                                            //                 PositionedDirectional(
                                                            //                   top: converter.h(9),
                                                            //                   child: Text(
                                                            //                     '벤치프레스',
                                                            //                     textAlign: TextAlign.start,
                                                            //                     style: TextStyle(
                                                            //                       // height: 18,
                                                            //                       fontSize: App.instance.overlay.relativeScreenHeight(
                                                            //                         12,
                                                            //                       ),
                                                            //                       color: const Color(
                                                            //                         0xFF111111,
                                                            //                       ),
                                                            //                       fontWeight: FontWeightAlias.regular,
                                                            //                       letterSpacing: 0,
                                                            //                     ),
                                                            //                   ),
                                                            //                 ),
                                                            //                 PositionedDirectional(
                                                            //                   top: converter.h(4),
                                                            //                   start: converter.w(88),
                                                            //                   width: ((295 - converter.w(88 + 32)) / 100) * 100,
                                                            //                   height: converter.h(
                                                            //                     10,
                                                            //                   ),
                                                            //                   child: Container(
                                                            //                     decoration: BoxDecoration(
                                                            //                       borderRadius: BorderRadius.all(
                                                            //                         converter.radius(
                                                            //                           4,
                                                            //                         ),
                                                            //                       ),
                                                            //                       color: const Color(
                                                            //                         0xFF9EA3B2,
                                                            //                       ),
                                                            //                     ),
                                                            //                   ),
                                                            //                 ),
                                                            //                 Align(
                                                            //                   alignment: Alignment.center,
                                                            //                   child: DashedDivider(
                                                            //                     indent: converter.w(88),
                                                            //                     endIndent: converter.w(3),
                                                            //                     color: const Color(0xFFE5E5EC),
                                                            //                     thickness: converter.h(2),
                                                            //                     dashWidth: converter.w(4),
                                                            //                     dashGap: converter.w(2),
                                                            //                   ),
                                                            //                 ),
                                                            //                 PositionedDirectional(
                                                            //                   top: converter.h(22),
                                                            //                   start: converter.w(88),
                                                            //                   width: ((295 - converter.w(88 + 32)) / 100) * 90,
                                                            //                   height: converter.h(
                                                            //                     10,
                                                            //                   ),
                                                            //                   child: Container(
                                                            //                     decoration: BoxDecoration(
                                                            //                       borderRadius: BorderRadius.all(
                                                            //                         converter.radius(
                                                            //                           4,
                                                            //                         ),
                                                            //                       ),
                                                            //                       color: const Color(
                                                            //                         0xFFDE6E6A,
                                                            //                       ),
                                                            //                     ),
                                                            //                   ),
                                                            //                 ),
                                                            //               ],
                                                            //             )),
                                                            const PerformanceChart(
                                                              exerciseName:
                                                                  '벤치프레스',
                                                              graphPercentage:
                                                                  75, // 예: 75% 길이
                                                              standard: 90,
                                                            ),
                                                            const BysonSeparator(
                                                                designWidth:
                                                                    designWidth,
                                                                designHeight:
                                                                    8),
                                                            const PerformanceChart(
                                                              exerciseName:
                                                                  '스쿼트',
                                                              graphPercentage:
                                                                  75, // 예: 75% 길이
                                                              standard: 90,
                                                            ),
                                                            const BysonSeparator(
                                                                designWidth:
                                                                    designWidth,
                                                                designHeight:
                                                                    8),
                                                            const PerformanceChart(
                                                              exerciseName:
                                                                  '데드리프트',
                                                              graphPercentage:
                                                                  75, // 예: 75% 길이
                                                              standard: 90,
                                                            ),
                                                            const BysonSeparator(
                                                                designWidth:
                                                                    designWidth,
                                                                designHeight:
                                                                    8),
                                                            const PerformanceChart(
                                                              exerciseName:
                                                                  '오버헤드프레스',
                                                              graphPercentage:
                                                                  75, // 예: 75% 길이
                                                              standard: 90,
                                                            ),
                                                            BysonAspectRatio(
                                                                designWidth:
                                                                    295,
                                                                designHeight:
                                                                    30,
                                                                builder:
                                                                    (converter) =>
                                                                        Stack(
                                                                          children: [
                                                                            PositionedDirectional(
                                                                                start: converter.w(88),
                                                                                top: converter.h(8),
                                                                                child: Row(
                                                                                  children: [
                                                                                    SizedBox(
                                                                                      width: 19,
                                                                                      height: 17,
                                                                                      child: Text(
                                                                                        '0kg',
                                                                                        textAlign: TextAlign.start,
                                                                                        style: TextStyle(
                                                                                          // height: converter.h(17),
                                                                                          fontSize: App.instance.overlay.relativeScreenHeight(
                                                                                            11,
                                                                                          ),
                                                                                          color: const Color(
                                                                                            0xFF111111,
                                                                                          ),
                                                                                          fontWeight: FontWeightAlias.regular,
                                                                                          letterSpacing: 0,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    VerticalDivider(color: Colors.transparent, width: 7.75),
                                                                                    SizedBox(
                                                                                      width: 27,
                                                                                      height: 17,
                                                                                      child: Text(
                                                                                        '50kg',
                                                                                        textAlign: TextAlign.start,
                                                                                        style: TextStyle(
                                                                                          // height: 18,
                                                                                          fontSize: App.instance.overlay.relativeScreenHeight(
                                                                                            11,
                                                                                          ),
                                                                                          color: const Color(
                                                                                            0xFF111111,
                                                                                          ),
                                                                                          fontWeight: FontWeightAlias.regular,
                                                                                          letterSpacing: 0,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    VerticalDivider(color: Colors.transparent, width: 7.75),
                                                                                    SizedBox(
                                                                                      width: 32,
                                                                                      height: 17,
                                                                                      child: Text(
                                                                                        '100kg',
                                                                                        textAlign: TextAlign.start,
                                                                                        style: TextStyle(
                                                                                          // height: 18,
                                                                                          fontSize: App.instance.overlay.relativeScreenHeight(
                                                                                            11,
                                                                                          ),
                                                                                          color: const Color(
                                                                                            0xFF111111,
                                                                                          ),
                                                                                          fontWeight: FontWeightAlias.regular,
                                                                                          letterSpacing: 0,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    VerticalDivider(color: Colors.transparent, width: 7.75),
                                                                                    SizedBox(
                                                                                      width: 32,
                                                                                      height: 17,
                                                                                      child: Text(
                                                                                        '150kg',
                                                                                        textAlign: TextAlign.start,
                                                                                        style: TextStyle(
                                                                                          // height: 18,
                                                                                          fontSize: App.instance.overlay.relativeScreenHeight(
                                                                                            11,
                                                                                          ),
                                                                                          color: const Color(
                                                                                            0xFF111111,
                                                                                          ),
                                                                                          fontWeight: FontWeightAlias.regular,
                                                                                          letterSpacing: 0,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    VerticalDivider(color: Colors.transparent, width: 7.75),
                                                                                    SizedBox(
                                                                                      width: 34,
                                                                                      height: 17,
                                                                                      child: Text(
                                                                                        '200kg',
                                                                                        textAlign: TextAlign.start,
                                                                                        style: TextStyle(
                                                                                          // height: 18,
                                                                                          fontSize: App.instance.overlay.relativeScreenHeight(
                                                                                            11,
                                                                                          ),
                                                                                          color: const Color(
                                                                                            0xFF111111,
                                                                                          ),
                                                                                          fontWeight: FontWeightAlias.regular,
                                                                                          letterSpacing: 0,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ))
                                                                          ],
                                                                        ))
                                                          ],
                                                        ),
                                                      )),
                                                ]))
                                      ],
                                    )),
                          ],
                        ),
                      ),
                    ),
                    // PositionedDirectional(
                    //   top: converter.h(
                    //     24,
                    //   ),
                    //   end: converter.w(
                    //     20,
                    //   ),
                    //   height: converter.h(
                    //     18,
                    //   ),
                    //   child: BysonCupertinoButton.solid(
                    //     onPressed: () =>
                    //         PracticeAnalyticsReportDetailSheet.show(
                    //       context: context,
                    //     ),
                    //     minSize: 0,
                    //     child: Row(
                    //       crossAxisAlignment:
                    //           CrossAxisAlignment.center,
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         Text(
                    //           '더보기',
                    //           textAlign: TextAlign.start,
                    //           style: TextStyle(
                    //             // height: 1.5,
                    //             fontSize: converter.h(
                    //               12,
                    //             ),
                    //             color: const Color(
                    //               0xFF888888,
                    //             ),
                    //             fontWeight: FontWeightAlias.regular,
                    //             letterSpacing: converter.lt(
                    //               fontSize: 12,
                    //               percent: -2,
                    //             ),
                    //           ),
                    //         ),
                    //         VerticalDivider(
                    //           color: Colors.transparent,
                    //           width: converter.w(
                    //             4,
                    //           ),
                    //           thickness: 0,
                    //         ),
                    //         Icon(
                    //           IconsaxPlusLinear.arrow_right_3,
                    //           color: const Color(
                    //             0xFF888888,
                    //           ),
                    //           size: converter.w(
                    //             12,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),

                    // const BysonSeparator(
                    //   designWidth: 335,
                    //   designHeight: 8,
                    // ),
                    // Assets.image.imgReport1.image(
                    //   width: App.instance.overlay.relativeScreenWidth(
                    //     335,
                    //   ),
                    //   fit: BoxFit.fitWidth,
                    // ),
                    // const BysonSeparator(
                    //   designWidth: 335,
                    //   designHeight: 8,
                    // ),
                    // Assets.image.imgReport2.image(
                    //   width: App.instance.overlay.relativeScreenWidth(
                    //     335,
                    //   ),
                    //   fit: BoxFit.fitWidth,
                    // ),
                  ),
                ),
                // bottomNavigationBar: SafeArea(
                //   child: BysonAspectRatio.padding(
                //     designWidth: designWidth,
                //     designHeight: 16 + 60 + 16,
                //     designPadding: const EdgeInsets.only(
                //       top: 16,
                //       left: 20,
                //       right: 20,
                //       bottom: 16,
                //     ),
                //     builder: (converter) => BysonCupertinoButton.solid(
                //       onPressed: () => App.instance.navigator.pop(),
                //       color: const Color(
                //         0xFF303F9F,
                //       ),
                //       borderRadius: BorderRadius.all(
                //         converter.radius(
                //           12,
                //         ),
                //       ),
                //       child: Center(
                //         child: Text(
                //           '운동 분석 완료',
                //           textAlign: TextAlign.center,
                //           style: TextStyle(
                //             // height: 1.5,
                //             fontSize: converter.h(
                //               18,
                //             ),
                //             color: Colors.white,
                //             fontWeight: FontWeightAlias.regular,
                //             letterSpacing: converter.lt(
                //               fontSize: 18,
                //               percent: -2,
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      );
}
