import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/constant/values.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/model/local/practice.dart';
import 'package:app/root/route/home/page/idle/idle_bloc.dart';
import 'package:app/root/route/home/page/nutrient/page/analytics/route/my_weight/my_weight_bloc.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/recommendation/recommendation_bloc.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_do/practice_do_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:byson_switcher/byson_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_circular_progress_indicator/gradient_circular_progress_indicator.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyWeightRoute extends StatelessWidget {
  final IdleBloc idleBloc;

  const MyWeightRoute({super.key, required this.idleBloc});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MyWeightBloc(idleBloc),
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
                          '나의 체중',
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
            body: Column(
              children: [
                const BysonSeparator(
                  designWidth: designWidth,
                  designHeight: 24,
                ),
                BysonAspectRatio(
                  designWidth: designWidth,
                  designHeight: 55,
                  builder: (converter) => Stack(
                    children: [
                      PositionedDirectional(
                        top: 0,
                        start: converter.w(
                          20,
                        ),
                        height: converter.h(
                          30,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '나의 체중',
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
                            '최근 기록한 체중 이력입니다.',
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
                const BysonSeparator(
                  designWidth: designWidth,
                  designHeight: 32,
                ),
                Expanded(
                  child: BlocBuilder<MyWeightBloc, MyWeightState>(
                    buildWhen: (previous, current) =>
                        (previous.records != current.records),
                    builder: (context, state) => ListView.separated(
                      itemCount: 1 + state.records.length,
                      separatorBuilder: (context, index) =>
                          const BysonSeparator(
                        designWidth: designWidth,
                        designHeight: 8,
                      ),
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return BysonAspectRatio.padding(
                            designWidth: designWidth,
                            designHeight: 81,
                            designPadding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            innerDecoration: (converter) => BoxDecoration(
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
                                  end: converter.w(
                                    56,
                                  ),
                                  height: converter.h(
                                    27,
                                  ),
                                  child: CupertinoTextField(
                                    controller: context
                                        .read<MyWeightBloc>()
                                        .textEditingController,
                                    suffixMode: OverlayVisibilityMode.editing,
                                    textAlignVertical: TextAlignVertical.center,
                                    onChanged: (value) =>
                                        context.read<MyWeightBloc>().add(
                                              MyWeightEvent.onInputChanged(
                                                value: value,
                                              ),
                                            ),
                                    decoration: const BoxDecoration(),
                                    padding: EdgeInsets.zero,
                                    placeholder: '80.0kg',
                                    placeholderStyle: TextStyle(
                                      // height: 1.5,
                                      fontSize: converter.h(
                                        18,
                                      ),
                                      color: const Color(
                                        0xFF111111,
                                      ).withOpacity(
                                        0.5,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.lt(
                                        fontSize: 18,
                                        percent: -2,
                                      ),
                                    ),
                                    style: TextStyle(
                                      // height: 1.5,
                                      fontSize: converter.h(
                                        18,
                                      ),
                                      color: const Color(
                                        0xFF111111,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: converter.lt(
                                        fontSize: 18,
                                        percent: -2,
                                      ),
                                    ),
                                    inputFormatters: [
                                      context
                                          .read<MyWeightBloc>()
                                          .maskTextInputFormatter,
                                    ],
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
                                  child: BysonCupertinoButton.solid(
                                    onPressed: () {},
                                    // context.read<MyWeightBloc>().add(
                                    //       const MyWeightEvent.submit(),
                                    //     ),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '체중 업데이트하기',
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
                                  child:
                                      BlocBuilder<MyWeightBloc, MyWeightState>(
                                    buildWhen: (previous, current) =>
                                        (previous.input != current.input),
                                    builder: (context, state) => BysonSwitcher(
                                      keys: () => context
                                          .read<MyWeightBloc>()
                                          .maskTextInputFormatter
                                          .isFill(),
                                      builder: (value) => GestureDetector(
                                        onTap: () {
                                          context.read<MyWeightBloc>().add(
                                                const MyWeightEvent.submit(),
                                              );
                                          // BlocListener<MyWeightBloc,
                                          //     MyWeightState>(
                                          //   listener: (context, state) {
                                          //     print('이거');
                                          //     if (context
                                          //         .read<MyWeightBloc>()
                                          //         .maskTextInputFormatter
                                          //         .isFill()) {
                                          //       idleBloc
                                          //           .add(IdleEvent.loadState());
                                          //     }
                                          //   },
                                          // );

                                          // const double value = double.parse(
                                          //     state.input.replaceAll('kg', ''));

                                          // context.read<IdleBloc>().add(
                                          //     const IdleEvent.updateWeight(
                                          //         value));
                                        },
                                        child: Icon(
                                          Icons.check,
                                          size: converter.w(
                                            28,
                                          ),
                                          color: switch (value) {
                                            true => const Color(
                                                0xFF04B014,
                                              ),
                                            false => const Color(
                                                0xFFB0B0B0,
                                              ),
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        } else {
                          index -= 1;

                          return Dismissible(
                            key: ValueKey(state.records[index].date),
                            // 각 아이템을 구분할 고유 키
                            direction: DismissDirection.endToStart,
                            // 우측에서 좌측으로 드래그
                            onDismissed: (direction) {
                              // 삭제 로직 실행
                              context.read<MyWeightBloc>().add(
                                    MyWeightEvent.delete(
                                        record: state.records[index]),
                                  );
                            },
                            child: BysonAspectRatio.padding(
                              designWidth: designWidth,
                              designHeight: 81,
                              designPadding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              innerDecoration: (converter) => BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color(0xFFE5E5EC),
                                  width: converter.h(1),
                                ),
                                borderRadius:
                                    BorderRadius.all(converter.radius(8)),
                              ),
                              builder: (converter) => Stack(
                                children: [
                                  // 🔹 삭제 버튼을 Dismissible의 background 대신 Stack 내부에 배치
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: converter.w(20)),
                                        child: Container(
                                          width: converter.w(50),
                                          height: converter.h(50),
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.delete,
                                            color: Colors.white,
                                            size: converter.w(28),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  // 🔹 원래의 내용
                                  PositionedDirectional(
                                    top: converter.h(16),
                                    start: converter.w(16),
                                    height: converter.h(27),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '${state.records[index].value}kg',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          height: 1.5,
                                          fontSize: converter.h(18),
                                          color: const Color(0xFF111111),
                                          fontWeight: FontWeightAlias.semiBold,
                                          letterSpacing: converter.lt(
                                              fontSize: 18, percent: -2),
                                        ),
                                      ),
                                    ),
                                  ),
                                  PositionedDirectional(
                                    bottom: converter.h(16),
                                    start: converter.w(16),
                                    height: converter.h(18),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        DateFormat('yy.MM.dd. 업데이트')
                                            .format(state.records[index].date),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          height: 1.5,
                                          fontSize: converter.h(12),
                                          color: const Color(0xFF888888),
                                          fontWeight: FontWeightAlias.regular,
                                          letterSpacing: converter.lt(
                                              fontSize: 12, percent: -2),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
                // Expanded(
                //   child: ListView(
                //     children: [
                //       BysonAspectRatio.padding(
                //         designWidth: designWidth,
                //         designHeight: 81,
                //         designPadding: const EdgeInsets.symmetric(
                //           horizontal: 20,
                //         ),
                //         builder: (converter) =>
                //             BysonCupertinoButton.outlinedSolid(
                //               onPressed: () {},
                //               color: Colors.white,
                //               border: Border.all(
                //                 color: const Color(
                //                   0xFFE5E5EC,
                //                 ),
                //                 width: converter.h(
                //                   1,
                //                 ),
                //               ),
                //               borderRadius: BorderRadius.all(
                //                 converter.radius(
                //                   8,
                //                 ),
                //               ),
                //               child: Stack(
                //                 children: [
                //                   PositionedDirectional(
                //                     top: converter.h(
                //                       16,
                //                     ),
                //                     start: converter.w(
                //                       16,
                //                     ),
                //                     height: converter.h(
                //                       27,
                //                     ),
                //                     child: Align(
                //                       alignment: Alignment.centerLeft,
                //                       child: Text(
                //                         '기본 정보 입력',
                //                         textAlign: TextAlign.center,
                //                         style: TextStyle(
                //                           height: 1.5,
                //                           fontSize: converter.h(
                //                             18,
                //                           ),
                //                           color: const Color(
                //                             0xFF111111,
                //                           ),
                //                           fontWeight:
                //                           FontWeightAlias.semiBold,
                //                           letterSpacing: converter.lt(
                //                             fontSize: 18,
                //                             percent: -2,
                //                           ),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                   PositionedDirectional(
                //                     bottom: converter.h(
                //                       16,
                //                     ),
                //                     start: converter.w(
                //                       16,
                //                     ),
                //                     height: converter.h(
                //                       18,
                //                     ),
                //                     child: Align(
                //                       alignment: Alignment.centerLeft,
                //                       child: Text(
                //                         '기본 정보 입력이 확인되었어요',
                //                         textAlign: TextAlign.center,
                //                         style: TextStyle(
                //                           height: 1.5,
                //                           fontSize: converter.h(
                //                             12,
                //                           ),
                //                           color: const Color(
                //                             0xFF888888,
                //                           ),
                //                           fontWeight: FontWeightAlias.regular,
                //                           letterSpacing: converter.lt(
                //                             fontSize: 12,
                //                             percent: -2,
                //                           ),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                   PositionedDirectional(
                //                     top: converter.h(
                //                       20.5,
                //                     ),
                //                     end: converter.w(
                //                       16,
                //                     ),
                //                     width: converter.w(
                //                       40,
                //                     ),
                //                     height: converter.h(
                //                       40,
                //                     ),
                //                     child: Icon(
                //                       Icons.check,
                //                       size: converter.w(
                //                         28,
                //                       ),
                //                       color: const Color(
                //                         0xFF04B014,
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //       ),
                //       const BysonSeparator(
                //         designWidth: designWidth,
                //         designHeight: 8,
                //       ),
                //       BysonAspectRatio.padding(
                //         designWidth: designWidth,
                //         designHeight: 81,
                //         designPadding: const EdgeInsets.symmetric(
                //           horizontal: 20,
                //         ),
                //         builder: (converter) =>
                //             BysonCupertinoButton.outlinedSolid(
                //               onPressed: () {},
                //               color: Colors.white,
                //               border: Border.all(
                //                 color: const Color(
                //                   0xFFE5E5EC,
                //                 ),
                //                 width: converter.h(
                //                   1,
                //                 ),
                //               ),
                //               borderRadius: BorderRadius.all(
                //                 converter.radius(
                //                   8,
                //                 ),
                //               ),
                //               child: Stack(
                //                 children: [
                //                   PositionedDirectional(
                //                     top: converter.h(
                //                       16,
                //                     ),
                //                     start: converter.w(
                //                       16,
                //                     ),
                //                     height: converter.h(
                //                       27,
                //                     ),
                //                     child: Align(
                //                       alignment: Alignment.centerLeft,
                //                       child: Text(
                //                         '운동 수준 입력',
                //                         textAlign: TextAlign.center,
                //                         style: TextStyle(
                //                           height: 1.5,
                //                           fontSize: converter.h(
                //                             18,
                //                           ),
                //                           color: const Color(
                //                             0xFF111111,
                //                           ),
                //                           fontWeight:
                //                           FontWeightAlias.semiBold,
                //                           letterSpacing: converter.lt(
                //                             fontSize: 18,
                //                             percent: -2,
                //                           ),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                   PositionedDirectional(
                //                     bottom: converter.h(
                //                       16,
                //                     ),
                //                     start: converter.w(
                //                       16,
                //                     ),
                //                     height: converter.h(
                //                       18,
                //                     ),
                //                     child: Align(
                //                       alignment: Alignment.centerLeft,
                //                       child: Text(
                //                         '운동 수준 입력이 확인되었어요',
                //                         textAlign: TextAlign.center,
                //                         style: TextStyle(
                //                           height: 1.5,
                //                           fontSize: converter.h(
                //                             12,
                //                           ),
                //                           color: const Color(
                //                             0xFF888888,
                //                           ),
                //                           fontWeight: FontWeightAlias.regular,
                //                           letterSpacing: converter.lt(
                //                             fontSize: 12,
                //                             percent: -2,
                //                           ),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                   PositionedDirectional(
                //                     top: converter.h(
                //                       20.5,
                //                     ),
                //                     end: converter.w(
                //                       16,
                //                     ),
                //                     width: converter.w(
                //                       40,
                //                     ),
                //                     height: converter.h(
                //                       40,
                //                     ),
                //                     child: Icon(
                //                       Icons.check,
                //                       size: converter.w(
                //                         28,
                //                       ),
                //                       color: const Color(
                //                         0xFF04B014,
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //       ),
                //       const BysonSeparator(
                //         designWidth: designWidth,
                //         designHeight: 8,
                //       ),
                //       BysonAspectRatio.padding(
                //         designWidth: designWidth,
                //         designHeight: 81,
                //         designPadding: const EdgeInsets.symmetric(
                //           horizontal: 20,
                //         ),
                //         builder: (converter) =>
                //             BysonCupertinoButton.outlinedSolid(
                //               onPressed: () {},
                //               color: Colors.white,
                //               border: Border.all(
                //                 color: const Color(
                //                   0xFFE5E5EC,
                //                 ),
                //                 width: converter.h(
                //                   1,
                //                 ),
                //               ),
                //               borderRadius: BorderRadius.all(
                //                 converter.radius(
                //                   8,
                //                 ),
                //               ),
                //               child: Stack(
                //                 children: [
                //                   PositionedDirectional(
                //                     top: converter.h(
                //                       16,
                //                     ),
                //                     start: converter.w(
                //                       16,
                //                     ),
                //                     height: converter.h(
                //                       27,
                //                     ),
                //                     child: Align(
                //                       alignment: Alignment.centerLeft,
                //                       child: Text(
                //                         '영양 정보 입력',
                //                         textAlign: TextAlign.center,
                //                         style: TextStyle(
                //                           height: 1.5,
                //                           fontSize: converter.h(
                //                             18,
                //                           ),
                //                           color: const Color(
                //                             0xFF111111,
                //                           ),
                //                           fontWeight:
                //                           FontWeightAlias.semiBold,
                //                           letterSpacing: converter.lt(
                //                             fontSize: 18,
                //                             percent: -2,
                //                           ),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                   PositionedDirectional(
                //                     bottom: converter.h(
                //                       16,
                //                     ),
                //                     start: converter.w(
                //                       16,
                //                     ),
                //                     height: converter.h(
                //                       18,
                //                     ),
                //                     child: Align(
                //                       alignment: Alignment.centerLeft,
                //                       child: Text(
                //                         '영양 정보 입력이 확인되었어요',
                //                         textAlign: TextAlign.center,
                //                         style: TextStyle(
                //                           height: 1.5,
                //                           fontSize: converter.h(
                //                             12,
                //                           ),
                //                           color: const Color(
                //                             0xFF888888,
                //                           ),
                //                           fontWeight: FontWeightAlias.regular,
                //                           letterSpacing: converter.lt(
                //                             fontSize: 12,
                //                             percent: -2,
                //                           ),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                   PositionedDirectional(
                //                     top: converter.h(
                //                       20.5,
                //                     ),
                //                     end: converter.w(
                //                       16,
                //                     ),
                //                     width: converter.w(
                //                       40,
                //                     ),
                //                     height: converter.h(
                //                       40,
                //                     ),
                //                     child: Icon(
                //                       Icons.check,
                //                       size: converter.w(
                //                         28,
                //                       ),
                //                       color: const Color(
                //                         0xFF04B014,
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ));
  }
}
