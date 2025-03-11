import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/models/practice_analytics_report_detail_sheet.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/practice_analytics_report_bloc.dart';
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
                    child: BysonAspectRatio(
                      designWidth: designWidth,
                      designHeight: designHeight,
                      builder: (converter) => Stack(
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color(
                                  0xFFE5E5EC,
                                ),
                                width:
                                    App.instance.overlay.relativeScreenHeight(
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
                                bottom:
                                    App.instance.overlay.relativeScreenHeight(
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                            '운동 분석 리포트',
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
                                          height: converter.h(
                                            30,
                                          ),
                                          child: Text(
                                            '운동 수준 총평',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              // height: 1.5,
                                              fontSize: converter.h(
                                                20,
                                              ),
                                              color: const Color(
                                                0xFF111111,
                                              ),
                                              fontWeight:
                                                  FontWeightAlias.semiBold,
                                              letterSpacing: converter.lt(
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
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  height: 0,
                                                  fontSize: converter.h(12),
                                                  color:
                                                      const Color(0xFF111111),
                                                  fontWeight:
                                                      FontWeightAlias.light,
                                                  letterSpacing: converter.lt(
                                                      percent: -2,
                                                      fontSize: 18)),
                                            )),
                                        PositionedDirectional(
                                          top: converter.h(
                                            0,
                                          ),
                                          end: 0,
                                          height: converter.h(
                                            18,
                                          ),
                                          child: BysonCupertinoButton.solid(
                                            onPressed: () {
                                              PracticeAnalyticsReportDetailSheet
                                                  .show(
                                                context: context,
                                              );
                                            },
                                            minSize: 0,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  // practiceList[0].name,
                                                  '상세보기',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    // height: 1.5,
                                                    fontSize: converter.h(
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
                                                VerticalDivider(
                                                  color: Colors.transparent,
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
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              // height: 1.5,
                                              fontSize: converter.h(
                                                20,
                                              ),
                                              color: const Color(
                                                0xFF111111,
                                              ),
                                              fontWeight:
                                                  FontWeightAlias.semiBold,
                                              letterSpacing: converter.lt(
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
                                                alignment: Alignment.topCenter,
                                                child: Divider(
                                                  indent: converter.w(0),
                                                  endIndent: converter.w(0),
                                                  color:
                                                      const Color(0xFFE5E5EC),
                                                  height: converter.h(1),
                                                  thickness: converter.h(1),
                                                ),
                                              ),
                                              PositionedDirectional(
                                                  top: converter.h(16),
                                                  start: converter.w(30.5),
                                                  child: Text(
                                                    '운동점수',
                                                    style: TextStyle(
                                                        fontSize:
                                                            converter.h(14)),
                                                  )),
                                              PositionedDirectional(
                                                  top: converter.h(16 + 21 + 4),
                                                  start: converter.w(37),
                                                  child: Text(
                                                    '91점',
                                                    style: TextStyle(
                                                        fontSize:
                                                            converter.h(18)),
                                                  )),
                                              PositionedDirectional(
                                                  top: converter.h(16),
                                                  start: converter.w(123.5),
                                                  child: Text('운동수준')),
                                              PositionedDirectional(
                                                  top: converter.h(16 + 21 + 4),
                                                  start: converter.w(124.5),
                                                  child: Text(
                                                    '고급자',
                                                    style: TextStyle(
                                                        fontSize:
                                                            converter.h(18)),
                                                  )),
                                              PositionedDirectional(
                                                  top: converter.h(16),
                                                  end: converter.w(30.5),
                                                  child: Text('3대 중량')),
                                              PositionedDirectional(
                                                  top: converter.h(16 + 21 + 4),
                                                  end: converter.w(27),
                                                  child: Text(
                                                    '620kg',
                                                    style: TextStyle(
                                                        fontSize:
                                                            converter.h(18)),
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
                                                height: converter.h(21),
                                                child: Text(
                                                  '운동분석 리포트',
                                                  style: TextStyle(
                                                      fontSize:
                                                          converter.h(14)),
                                                ),
                                              ),
                                              PositionedDirectional(
                                                top: converter.h(21),
                                                start: 0,
                                                height: converter.h(30),
                                                child: Text(
                                                  '나의 3대 운동 중량',
                                                  style: TextStyle(
                                                      fontSize:
                                                          converter.h(20)),
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
                                  const BysonSeparator(
                                      designWidth: designWidth,
                                      designHeight: 32),
                                  BysonAspectRatio(
                                      designWidth: 295,
                                      designHeight: 277,
                                      builder: (converter) => Stack(
                                            children: [
                                              // 📌 페이지 중간에 그래프 삽입
                                              // ExerciseStatsWidget(),

                                              SizedBox(height: 20),
                                            ],
                                          ))
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
                        ],
                      ),
                    ),
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
