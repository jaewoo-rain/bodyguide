import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/root/route/home/home_bloc.dart';
import 'package:app/root/route/home/page/nutrient/page/analytics/route/my_weight/my_weight_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../nutrient/page/analytics/route/my_weight/my_weight_route.dart';
import 'idle_bloc.dart';

class IdlePage extends StatelessWidget {
  const IdlePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final idleBloc = context.read<IdleBloc>(); // IdleBloc 인스턴스 가져오기

    // => BlocProvider(
    // create: (context) => IdleBloc()..add(const IdleEvent.loadState()),
    // child: Builder(builder: (context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(
          0xFF344BC1,
        ),
        surfaceTintColor: const Color(
          0xFF344BC1,
        ),
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        elevation: 0,
        systemOverlayStyle: systemUiOverlayStyleLight,
        flexibleSpace: SafeArea(
          child: BysonAspectRatio(
            designWidth: designWidth,
            designHeight: 56,
            builder: (converter) => Stack(
              children: [
                Center(
                  child: Text(
                    '바디가이드',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.5,
                      fontSize: converter.h(
                        20,
                      ),
                      color: Colors.white,
                      fontWeight: FontWeightAlias.extraBold,
                      letterSpacing: converter.w(
                        -0.5,
                      ),
                    ),
                  ),
                ),
                PositionedDirectional(
                  top: 0,
                  end: converter.w(
                    60 - 8,
                  ),
                  bottom: 0,
                  width: converter.h(
                    8 + 24 + 8,
                  ),
                  child: BysonCupertinoButton.solid(
                    onPressed: () => App.instance.navigator.push(
                      Routes.notification.path,
                    ),
                    child: Center(
                      child: Icon(
                        IconsaxPlusLinear.notification,
                        color: Colors.white,
                        size: converter.h(
                          24,
                        ),
                      ),
                    ),
                  ),
                ),
                PositionedDirectional(
                  top: 0,
                  end: converter.w(
                    12,
                  ),
                  bottom: 0,
                  width: converter.h(
                    8 + 24 + 8,
                  ),
                  child: BysonCupertinoButton.solid(
                    onPressed: () => App.instance.navigator.push(
                      Routes.calendar.path,
                    ),
                    child: Center(
                      child: Icon(
                        IconsaxPlusLinear.calendar,
                        color: Colors.white,
                        size: converter.h(
                          24,
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
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.symmetric(
          vertical: App.instance.overlay.relativeScreenHeight(
            16,
          ),
        ),
        child: Column(
          children: [
            const BysonSeparator(
              designWidth: designWidth,
              designHeight: 16,
            ),
            BysonAspectRatio.padding(
              designWidth: designWidth,
              designHeight: 180,
              designPadding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              builder: (converter) => Stack(
                children: [
                  PageView.builder(
                    // 배너 사진
                    itemCount: 99,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      // color: Colors.red,
                      child: Assets.image.imgBanner.image(
                        alignment: Alignment.center,
                        width: designWidth,
                        fit: BoxFit.cover,
                        // width: converter.realSize.width,
                        // height: converter.realSize.height,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const BysonSeparator(
              designWidth: designWidth,
              designHeight: 16,
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
                        onPressed: () {
                          // App.instance.navigator
                          //     .push(Routes.myWeight.path, extra: idleBloc);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => MyWeightRoute(idleBloc: idleBloc),
                            ),
                          );

                          // App.instance.navigator.push(
                          //   Routes.myWeight.path,
                          //   extra: {
                          //     'practiceHistoryBloc': context.read<IdleBloc>(),
                          //   },
                          // );
                        },
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
                                  '체중',
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
                                child: BlocBuilder<IdleBloc, IdleState>(
                                    buildWhen: (previous, current) =>
                                        (previous.weight != current.weight),
                                    builder: (context, state) {
                                      // context.read<IdleBloc>().add(
                                      //     IdleEvent.updateWeight(state
                                      //         .weight)); // 체중 75.5kg로 변경
                                      return Text(
                                        '${state.weight}kg',
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
                                      );
                                    }),
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
                              child: Assets.image.imgWeightScale.image(
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
                        onPressed: () {
                          // context
                          //     .read<IdleBloc>()
                          //     .add(IdleEvent.updateWeight(11));
                          App.instance.navigator
                              .push(Routes.recommendation.path);
                        },
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
            // const BysonSeparator(
            //   designWidth: designWidth,
            //   designHeight: 16,
            // ),
            // BysonAspectRatio.padding(
            //   designWidth: designWidth,
            //   designHeight: 138,
            //   innerDecoration: (converter) => BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.all(
            //       converter.radius(
            //         16,
            //       ),
            //     ),
            //     boxShadow: [
            //       BoxShadow(
            //         offset: Offset(
            //           converter.w(
            //             2,
            //           ),
            //           converter.h(
            //             4,
            //           ),
            //         ),
            //         spreadRadius: 0,
            //         blurRadius: converter.average(
            //           12,
            //         ),
            //         color: Colors.black.withOpacity(
            //           0.04,
            //         ),
            //       ),
            //     ],
            //   ),
            //   designPadding: const EdgeInsets.symmetric(
            //     horizontal: 20,
            //   ),
            //   builder: (converter) => Stack(
            //     children: [
            //       PositionedDirectional(
            //         top: converter.h(
            //           16,
            //         ),
            //         start: converter.w(
            //           16,
            //         ),
            //         height: converter.h(
            //           25,
            //         ),
            //         child: DecoratedBox(
            //           decoration: BoxDecoration(
            //             color: const Color(
            //               0xFFF1F5FD,
            //             ),
            //             borderRadius: BorderRadius.all(
            //               converter.radius(
            //                 100,
            //               ),
            //             ),
            //           ),
            //           child: Padding(
            //             padding: EdgeInsets.symmetric(
            //               horizontal: converter.w(
            //                 12,
            //               ),
            //               vertical: converter.h(
            //                 4,
            //               ),
            //             ),
            //             child: Center(
            //               child: Text(
            //                 '섭취를 기록해보세요',
            //                 textAlign: TextAlign.start,
            //                 style: TextStyle(
            //                   height: 1.5,
            //                   fontSize: converter.h(
            //                     11,
            //                   ),
            //                   color: const Color(
            //                     0xFF303F9F,
            //                   ),
            //                   fontWeight: FontWeightAlias.regular,
            //                   letterSpacing: converter.lt(
            //                     fontSize: 11,
            //                     percent: -2,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //       PositionedDirectional(
            //         top: converter.h(
            //           72,
            //         ),
            //         start: converter.w(
            //           16,
            //         ),
            //         height: converter.h(
            //           21,
            //         ),
            //         child: Align(
            //           alignment: Alignment.centerLeft,
            //           child: Text(
            //             '섭취 기록',
            //             textAlign: TextAlign.start,
            //             style: TextStyle(
            //               height: 1.5,
            //               fontSize: converter.h(
            //                 14,
            //               ),
            //               color: const Color(
            //                 0xFF888888,
            //               ),
            //               fontWeight: FontWeightAlias.medium,
            //               letterSpacing: converter.lt(
            //                 fontSize: 14,
            //                 percent: -2,
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //       PositionedDirectional(
            //         top: converter.h(
            //           97,
            //         ),
            //         start: converter.w(
            //           16,
            //         ),
            //         height: converter.h(
            //           24,
            //         ),
            //         child: Align(
            //           alignment: Alignment.centerLeft,
            //           child: Text(
            //             '2,340kcal',
            //             textAlign: TextAlign.start,
            //             style: TextStyle(
            //               height: 1.2,
            //               fontSize: converter.h(
            //                 20,
            //               ),
            //               color: const Color(
            //                 0xFF111111,
            //               ),
            //               fontWeight: FontWeightAlias.semiBold,
            //               letterSpacing: converter.lt(
            //                 fontSize: 20,
            //                 percent: -2,
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //       PositionedDirectional(
            //         top: converter.h(
            //           30,
            //         ),
            //         start: converter.w(
            //           204,
            //         ),
            //         height: converter.h(
            //           21,
            //         ),
            //         child: Row(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           children: [
            //             SizedBox(
            //               width: converter.w(
            //                 8,
            //               ),
            //               height: converter.h(
            //                 8,
            //               ),
            //               child: DecoratedBox(
            //                 decoration: BoxDecoration(
            //                   borderRadius: BorderRadius.all(
            //                     converter.radius(
            //                       2,
            //                     ),
            //                   ),
            //                   color: const Color(
            //                     0xFF9CFF83,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             VerticalDivider(
            //               color: Colors.transparent,
            //               width: converter.w(
            //                 8,
            //               ),
            //               thickness: 0,
            //             ),
            //             Text(
            //               '탄수화물',
            //               textAlign: TextAlign.start,
            //               style: TextStyle(
            //                 height: 1.5,
            //                 fontSize: converter.h(
            //                   14,
            //                 ),
            //                 color: const Color(
            //                   0xFF888888,
            //                 ),
            //                 fontWeight: FontWeightAlias.medium,
            //                 letterSpacing: converter.lt(
            //                   fontSize: 14,
            //                   percent: -2,
            //                 ),
            //               ),
            //             ),
            //             VerticalDivider(
            //               color: Colors.transparent,
            //               width: converter.w(
            //                 4,
            //               ),
            //               thickness: 0,
            //             ),
            //             Text(
            //               '50%',
            //               textAlign: TextAlign.start,
            //               style: TextStyle(
            //                 height: 1.5,
            //                 fontSize: converter.h(
            //                   14,
            //                 ),
            //                 color: const Color(
            //                   0xFF111111,
            //                 ),
            //                 fontWeight: FontWeightAlias.semiBold,
            //                 letterSpacing: converter.lt(
            //                   fontSize: 14,
            //                   percent: -2,
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       PositionedDirectional(
            //         top: converter.h(
            //           59,
            //         ),
            //         start: converter.w(
            //           204,
            //         ),
            //         height: converter.h(
            //           21,
            //         ),
            //         child: Row(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           children: [
            //             SizedBox(
            //               width: converter.w(
            //                 8,
            //               ),
            //               height: converter.h(
            //                 8,
            //               ),
            //               child: DecoratedBox(
            //                 decoration: BoxDecoration(
            //                   borderRadius: BorderRadius.all(
            //                     converter.radius(
            //                       2,
            //                     ),
            //                   ),
            //                   color: const Color(
            //                     0xFFFF6666,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             VerticalDivider(
            //               color: Colors.transparent,
            //               width: converter.w(
            //                 8,
            //               ),
            //               thickness: 0,
            //             ),
            //             Text(
            //               '단백질',
            //               textAlign: TextAlign.start,
            //               style: TextStyle(
            //                 height: 1.5,
            //                 fontSize: converter.h(
            //                   14,
            //                 ),
            //                 color: const Color(
            //                   0xFF888888,
            //                 ),
            //                 fontWeight: FontWeightAlias.medium,
            //                 letterSpacing: converter.lt(
            //                   fontSize: 14,
            //                   percent: -2,
            //                 ),
            //               ),
            //             ),
            //             VerticalDivider(
            //               color: Colors.transparent,
            //               width: converter.w(
            //                 4,
            //               ),
            //               thickness: 0,
            //             ),
            //             Text(
            //               '38%',
            //               textAlign: TextAlign.start,
            //               style: TextStyle(
            //                 height: 1.5,
            //                 fontSize: converter.h(
            //                   14,
            //                 ),
            //                 color: const Color(
            //                   0xFF111111,
            //                 ),
            //                 fontWeight: FontWeightAlias.semiBold,
            //                 letterSpacing: converter.lt(
            //                   fontSize: 14,
            //                   percent: -2,
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       PositionedDirectional(
            //         top: converter.h(
            //           88,
            //         ),
            //         start: converter.w(
            //           204,
            //         ),
            //         height: converter.h(
            //           21,
            //         ),
            //         child: Row(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           children: [
            //             SizedBox(
            //               width: converter.w(
            //                 8,
            //               ),
            //               height: converter.h(
            //                 8,
            //               ),
            //               child: DecoratedBox(
            //                 decoration: BoxDecoration(
            //                   borderRadius: BorderRadius.all(
            //                     converter.radius(
            //                       2,
            //                     ),
            //                   ),
            //                   color: const Color(
            //                     0xFFFFD460,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             VerticalDivider(
            //               color: Colors.transparent,
            //               width: converter.w(
            //                 8,
            //               ),
            //               thickness: 0,
            //             ),
            //             Text(
            //               '지방',
            //               textAlign: TextAlign.start,
            //               style: TextStyle(
            //                 height: 1.5,
            //                 fontSize: converter.h(
            //                   14,
            //                 ),
            //                 color: const Color(
            //                   0xFF888888,
            //                 ),
            //                 fontWeight: FontWeightAlias.medium,
            //                 letterSpacing: converter.lt(
            //                   fontSize: 14,
            //                   percent: -2,
            //                 ),
            //               ),
            //             ),
            //             VerticalDivider(
            //               color: Colors.transparent,
            //               width: converter.w(
            //                 4,
            //               ),
            //               thickness: 0,
            //             ),
            //             Text(
            //               '22%',
            //               textAlign: TextAlign.start,
            //               style: TextStyle(
            //                 height: 1.5,
            //                 fontSize: converter.h(
            //                   14,
            //                 ),
            //                 color: const Color(
            //                   0xFF111111,
            //                 ),
            //                 fontWeight: FontWeightAlias.semiBold,
            //                 letterSpacing: converter.lt(
            //                   fontSize: 14,
            //                   percent: -2,
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            const BysonSeparator(
              designWidth: designWidth,
              designHeight: 16,
            ),
            BysonAspectRatio.padding(
              designWidth: designWidth,
              designHeight: 141,
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
              builder: (converter) => Stack(
                children: [
                  PositionedDirectional(
                    top: converter.h(
                      16,
                    ),
                    start: converter.w(
                      16,
                    ),
                    height: converter.h(
                      25,
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: const Color(
                          0xFFF1F5FD,
                        ),
                        borderRadius: BorderRadius.all(
                          converter.radius(
                            100,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: converter.w(
                            12,
                          ),
                          vertical: converter.h(
                            4,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '운동을 기록해보세요',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              height: 1.5,
                              fontSize: converter.h(
                                11,
                              ),
                              color: const Color(
                                0xFF303F9F,
                              ),
                              fontWeight: FontWeightAlias.regular,
                              letterSpacing: converter.lt(
                                fontSize: 11,
                                percent: -2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  PositionedDirectional(
                    top: converter.h(
                      72,
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
                        '운동 기록',
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
                      97,
                    ),
                    start: converter.w(
                      16,
                    ),
                    height: converter.h(
                      24,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: BlocBuilder<IdleBloc, IdleState>(
                          buildWhen: (previous, current) =>
                              (previous.volume != current.volume),
                          builder: (context, state) {
                            return Text(
                              '${state.volume}kg',
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
                            );
                          }),
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
                      68,
                    ),
                    height: converter.h(
                      68,
                    ),
                    child: Assets.image.imgProgram.image(
                      width: converter.w(
                        68,
                      ),
                      height: converter.h(
                        68,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const BysonSeparator(
              designWidth: designWidth,
              designHeight: 16,
            ),
          ],
        ),
      ),
    );
    //   }),
    // );
  }
}
