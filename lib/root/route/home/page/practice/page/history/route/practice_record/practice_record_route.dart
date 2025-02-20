import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/constant/values.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/model/local/practice.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_record/practice_record_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:byson_switcher/byson_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class PracticeRecordRoute extends StatelessWidget {
  const PracticeRecordRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => PracticeRecordBloc(),
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
                          '나의 운동 기록',
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
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(
                  App.instance.overlay.relativeScreenHeight(
                    56 + 20 + 41 + 32,
                  ),
                ),
                child: BysonAspectRatio(
                  designWidth: designWidth,
                  designHeight: 56 + 20 + 41 + 32,
                  builder: (converter) => Stack(
                    children: [
                      PositionedDirectional(
                        bottom: 0,
                        height: converter.h(20 + 41 + 32),
                        start: 0,
                        end: 0,
                        child: Container(
                          color: const Color(
                            0xFFF1F1F5,
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        top: converter.h(
                          8,
                        ),
                        start: converter.hcx(
                          335,
                        ),
                        width: converter.w(
                          335,
                        ),
                        height: converter.h(
                          40,
                        ),
                        child: BlocBuilder<PracticeRecordBloc,
                            PracticeRecordState>(
                          buildWhen: (previous, current) =>
                              (previous.query != current.query),
                          builder: (context, state) => CupertinoTextField(
                            controller: context
                                .read<PracticeRecordBloc>()
                                .textEditingController,
                            focusNode:
                                context.read<PracticeRecordBloc>().focusNode,
                            onChanged: (value) =>
                                context.read<PracticeRecordBloc>().add(
                                      PracticeRecordEvent.onQueryChanged(
                                        value: value,
                                      ),
                                    ),
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.done,
                            decoration: BoxDecoration(
                              color: const Color(
                                0xFFE5E5EC,
                              ),
                              borderRadius: BorderRadius.all(
                                converter.radius(
                                  4,
                                ),
                              ),
                            ),
                            cursorColor: const Color(
                              0xFF303F9F,
                            ),
                            padding: EdgeInsets.only(
                              left: converter.w(
                                8,
                              ),
                              right: converter.w(
                                8,
                              ),
                            ),
                            textAlign: TextAlign.start,
                            textAlignVertical: TextAlignVertical.center,
                            placeholder: '원하는 운동을 검색하세요',
                            prefix: Padding(
                              padding: EdgeInsets.only(
                                left: converter.w(
                                  8,
                                ),
                              ),
                              child: const Icon(
                                Icons.search,
                                color: Color(
                                  0xFF888888,
                                ),
                              ),
                            ),
                            suffix: BysonSwitcher(
                              keys: () => state.query.isNotEmpty,
                              builder: (value) => switch (value) {
                                true => Padding(
                                    padding: EdgeInsets.only(
                                      left: converter.w(
                                        8,
                                      ),
                                    ),
                                    child: BysonCupertinoButton.solid(
                                      onPressed: () {
                                        context.read<PracticeRecordBloc>().add(
                                              const PracticeRecordEvent
                                                  .onQueryChanged(
                                                value: '',
                                              ),
                                            );

                                        context
                                            .read<PracticeRecordBloc>()
                                            .textEditingController
                                            .clear();

                                        FocusScope.of(
                                          context,
                                        ).unfocus();
                                      },
                                      child: const Icon(
                                        Icons.clear,
                                        color: Color(
                                          0xFF888888,
                                        ),
                                      ),
                                    ),
                                  ),
                                false => const SizedBox.shrink(),
                              },
                            ),
                            placeholderStyle: TextStyle(
                              height: 1.5,
                              fontSize: converter.h(
                                16,
                              ),
                              color: const Color(
                                0xFFB0B0B0,
                              ),
                              fontWeight: FontWeightAlias.regular,
                              letterSpacing: converter.lt(
                                fontSize: 16,
                                percent: -2,
                              ),
                            ),
                            style: TextStyle(
                              height: 1.5,
                              fontSize: converter.h(
                                16,
                              ),
                              color: Colors.black,
                              fontWeight: FontWeightAlias.regular,
                              letterSpacing: converter.lt(
                                fontSize: 16,
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
                        start: 0,
                        end: 0,
                        height: converter.h(
                          41,
                        ),
                        child: BlocBuilder<PracticeRecordBloc,
                            PracticeRecordState>(
                          buildWhen: (previous, current) =>
                              (previous.selectedPracticeCategory !=
                                  current.selectedPracticeCategory),
                          builder: (context, state) => ListView.separated(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.symmetric(
                              horizontal: converter.w(
                                20,
                              ),
                            ),
                            separatorBuilder: (context, index) =>
                                VerticalDivider(
                              color: Colors.transparent,
                              width: converter.w(
                                8,
                              ),
                              thickness: 0,
                            ),
                            itemBuilder: (context, index) =>
                                BysonCupertinoButton.outlinedSolid(
                              color: switch (index) {
                                0 => switch (
                                      state.selectedPracticeCategory == null) {
                                    true => const Color(
                                        0xFF3D5DD3,
                                      ),
                                    false => Colors.transparent,
                                  },
                                _ => switch (state.selectedPracticeCategory ==
                                      practices.keys.elementAt(index - 1)) {
                                    true => const Color(
                                        0xFF3D5DD3,
                                      ),
                                    false => Colors.transparent,
                                  },
                              },
                              onPressed: () => switch (index) {
                                0 => context.read<PracticeRecordBloc>().add(
                                      const PracticeRecordEvent
                                          .clearPracticeCategory(),
                                    ),
                                _ => context.read<PracticeRecordBloc>().add(
                                      PracticeRecordEvent
                                          .selectPracticeCategory(
                                        value:
                                            practices.keys.elementAt(index - 1),
                                      ),
                                    ),
                              },
                              padding: EdgeInsets.symmetric(
                                horizontal: converter.w(
                                  16,
                                ),
                              ),
                              borderRadius: BorderRadius.all(
                                converter.radius(
                                  100,
                                ),
                              ),
                              border: switch (index) {
                                0 => switch (
                                      state.selectedPracticeCategory == null) {
                                    true => null,
                                    false => Border.all(
                                        color: const Color(
                                          0xFFB0B0B0,
                                        ),
                                        width: converter.h(
                                          1,
                                        ),
                                      ),
                                  },
                                _ => switch (state.selectedPracticeCategory ==
                                      practices.keys.elementAt(index - 1)) {
                                    true => null,
                                    false => Border.all(
                                        color: const Color(
                                          0xFFB0B0B0,
                                        ),
                                        width: converter.h(
                                          1,
                                        ),
                                      ),
                                  },
                              },
                              child: Center(
                                child: Text(
                                  switch (index) {
                                    0 => '최근운동',
                                    _ => practices.keys.elementAt(index - 1),
                                  },
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: converter.h(
                                      14,
                                    ),
                                    color: switch (index) {
                                      0 => switch (
                                            state.selectedPracticeCategory ==
                                                null) {
                                          true => Colors.white,
                                          false => const Color(
                                              0xFF3D3D3D,
                                            ),
                                        },
                                      _ => switch (
                                            state.selectedPracticeCategory ==
                                                practices.keys
                                                    .elementAt(index - 1)) {
                                          true => Colors.white,
                                          false => const Color(
                                              0xFF3D3D3D,
                                            ),
                                        },
                                    },
                                    fontWeight: FontWeightAlias.medium,
                                    letterSpacing: converter.lt(
                                      fontSize: 14,
                                      percent: -2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            itemCount: 1 + practices.keys.length,
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
                BlocBuilder<PracticeRecordBloc, PracticeRecordState>(
                  buildWhen: (previous, current) =>
                      (previous.selectedPracticeItems !=
                          current.selectedPracticeItems),
                  builder: (context, state) => AnimatedSize(
                    duration: defaultAnimationDuration,
                    curve: defaultAnimationCurve,
                    child: switch (state.selectedPracticeItems.isEmpty) {
                      true => SizedBox(
                          width: App.instance.overlay.screenSize.width,
                        ),
                      false => BysonAspectRatio(
                          designWidth: designWidth,
                          designHeight: 81 + 32,
                          builder: (converter) => Stack(
                            children: [
                              PositionedDirectional(
                                top: 0,
                                start: converter.w(
                                  16,
                                ),
                                child: Text(
                                  '선택한 항목',
                                  textAlign: TextAlign.center,
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
                              PositionedDirectional(
                                bottom: converter.h(
                                  32,
                                ),
                                start: 0,
                                end: 0,
                                height: converter.h(
                                  41,
                                ),
                                child: BlocBuilder<PracticeRecordBloc,
                                    PracticeRecordState>(
                                  buildWhen: (previous, current) =>
                                      (previous.selectedPracticeItems !=
                                          current.selectedPracticeItems),
                                  builder: (context, state) =>
                                      ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: converter.w(
                                        20,
                                      ),
                                    ),
                                    separatorBuilder: (context, index) =>
                                        VerticalDivider(
                                      color: Colors.transparent,
                                      width: converter.w(
                                        8,
                                      ),
                                      thickness: 0,
                                    ),
                                    itemBuilder: (context, index) =>
                                        BysonCupertinoButton.solid(
                                      color: const Color(
                                        0xFF3D5DD3,
                                      ),
                                      onPressed: () => context
                                          .read<PracticeRecordBloc>()
                                          .add(PracticeRecordEvent
                                              .selectPracticeItem(
                                            value: state.selectedPracticeItems
                                                .elementAt(
                                              index,
                                            ),
                                          )),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: converter.w(
                                          16,
                                        ),
                                      ),
                                      borderRadius: BorderRadius.all(
                                        converter.radius(
                                          100,
                                        ),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            state.selectedPracticeItems
                                                .elementAt(index)
                                                .name,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              // height: 1.5,
                                              fontSize: converter.h(
                                                14,
                                              ),
                                              color: Colors.white,
                                              fontWeight:
                                                  FontWeightAlias.medium,
                                              letterSpacing: converter.lt(
                                                fontSize: 14,
                                                percent: -2,
                                              ),
                                            ),
                                          ),
                                          VerticalDivider(
                                            color: Colors.transparent,
                                            width: converter.w(
                                              8,
                                            ),
                                            thickness: 0,
                                          ),
                                          Icon(
                                            Icons.close,
                                            color: Colors.white,
                                            size: converter.w(
                                              16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    itemCount:
                                        state.selectedPracticeItems.length,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    },
                  ),
                ),
                Expanded(
                  child: BlocBuilder<PracticeRecordBloc, PracticeRecordState>(
                    buildWhen: (previous, current) =>
                        (previous.selectedPracticeCategory !=
                            current.selectedPracticeCategory) ||
                        (previous.selectedPracticeItems !=
                            current.selectedPracticeItems) ||
                        (previous.query != current.query) ||
                        (previous.searchedPracticeItems !=
                            current.searchedPracticeItems),
                    builder: (context, state) => BysonSwitcher(
                      keys: () => state.selectedPracticeCategory,
                      builder: (value) {
                        final String title = switch (state.query.isNotEmpty) {
                          true => '검색결과',
                          false => switch (
                                state.selectedPracticeCategory == null) {
                              true => '최근운동',
                              false => state.selectedPracticeCategory ?? '',
                            },
                        };

                        final List<Practice> items =
                            switch (state.query.isNotEmpty) {
                          true => state.searchedPracticeItems.toList(),
                          false => switch (
                                state.selectedPracticeCategory == null) {
                              true => practices.values
                                  .where(
                                    (element) => element.isNotEmpty,
                                  )
                                  .expand(
                                    (element) => [
                                      element.first,
                                    ],
                                  )
                                  .toList(),
                              false =>
                                practices[state.selectedPracticeCategory] ?? [],
                            },
                        };

                        return Column(
                          children: [
                            BysonAspectRatio(
                              designWidth: designWidth,
                              designHeight: 24 + 16,
                              builder: (converter) => Stack(
                                children: [
                                  PositionedDirectional(
                                    top: 0,
                                    start: converter.w(
                                      16,
                                    ),
                                    child: Text(
                                      title,
                                      textAlign: TextAlign.center,
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
                                ],
                              ),
                            ),
                            Expanded(
                              child: ListView.separated(
                                separatorBuilder: (context, index) =>
                                    const BysonSeparator(
                                  designWidth: designWidth,
                                  designHeight: 8,
                                ),
                                itemBuilder: (context, index) =>
                                    BysonAspectRatio.padding(
                                  designWidth: designWidth,
                                  designHeight: 92,
                                  designPadding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  builder: (converter) =>
                                      BysonCupertinoButton.outlinedSolid(
                                    onPressed: () => context
                                        .read<PracticeRecordBloc>()
                                        .add(PracticeRecordEvent
                                            .selectPracticeItem(
                                          value: items[index],
                                        )),
                                    borderRadius: BorderRadius.all(
                                      converter.radius(
                                        12,
                                      ),
                                    ),
                                    border: switch (state.selectedPracticeItems
                                        .contains(items[index])) {
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
                                    color: switch (state.selectedPracticeItems
                                        .contains(items[index])) {
                                      true => const Color(
                                          0xFFF1F5FD,
                                        ),
                                      false => Colors.white,
                                    },
                                    child: Stack(
                                      children: [
                                        PositionedDirectional(
                                          top: converter.h(
                                            16,
                                          ),
                                          start: converter.w(
                                            16,
                                          ),
                                          width: converter.w(
                                            60,
                                          ),
                                          height: converter.h(
                                            60,
                                          ),
                                          child: Assets.image.imgPractice.image(
                                            width: converter.w(
                                              60,
                                            ),
                                            height: converter.h(
                                              60,
                                            ),
                                            alignment: Alignment.center,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        PositionedDirectional(
                                          top: converter.h(
                                              // 32.5,
                                              16),
                                          start: converter.w(
                                            92,
                                          ),
                                          end: converter.w(
                                              // 16,
                                              -0.539),
                                          height: converter.h(
                                              // 27,
                                              54),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                items[index].name,
                                                // textAlign: TextAlign.center,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  height: 1.2,
                                                  fontSize: converter.h(
                                                    18,
                                                  ),
                                                  color: const Color(
                                                    0xFF111111,
                                                  ),
                                                  fontWeight:
                                                      FontWeightAlias.regular,
                                                  letterSpacing: converter.lt(
                                                    fontSize: 18,
                                                    percent: -2,
                                                  ),
                                                ),
                                              ),
                                              VerticalDivider(
                                                color: Colors.transparent,
                                                width: converter.w(
                                                  8,
                                                ),
                                                thickness: 0,
                                              ),
                                              // DecoratedBox(
                                              //   decoration: BoxDecoration(
                                              //     color: const Color(
                                              //       0xFFC7D7F6,
                                              //     ),
                                              //     borderRadius:
                                              //         BorderRadius.all(
                                              //       converter.radius(
                                              //         8,
                                              //       ),
                                              //     ),
                                              //   ),
                                              //   child: Padding(
                                              //     padding: EdgeInsets.symmetric(
                                              //       horizontal: converter.w(
                                              //         6,
                                              //       ),
                                              //     ),
                                              //     child: Center(
                                              //       child: Text(
                                              //         items[index].category,
                                              //         textAlign:
                                              //             TextAlign.center,
                                              //         style: TextStyle(
                                              //           // height: 1.5,
                                              //           fontSize: converter.h(
                                              //             12,
                                              //           ),
                                              //           color: const Color(
                                              //             0xFF3D5DD3,
                                              //           ),
                                              //           fontWeight:
                                              //               FontWeightAlias
                                              //                   .regular,
                                              //           letterSpacing:
                                              //               converter.lt(
                                              //             fontSize: 12,
                                              //             percent: -2,
                                              //           ),
                                              //         ),
                                              //       ),
                                              //     ),
                                              //   ),
                                              // ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                itemCount: items.length,
                                shrinkWrap: true,
                              ),
                            ),
                          ],
                        );
                      },
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
                    BlocBuilder<PracticeRecordBloc, PracticeRecordState>(
                  buildWhen: (previous, current) =>
                      (previous.selectedPracticeItems !=
                          current.selectedPracticeItems),
                  builder: (context, state) => BysonSwitcher(
                    keys: () => state.selectedPracticeItems.isEmpty,
                    builder: (value) => BysonCupertinoButton.solid(
                      onPressed: () {
                        if (value) {
                          // 아무것도 선택하지 않았을경우
                          print('true 상태에서는 아무것도 하지 않습니다.');
                        } else {
                          // 운동을 선택할경우
                          App.instance.navigator
                              .pop(state.selectedPracticeItems);
                          print('클릭');
                        }
                      },
                      color: switch (value) {
                        true => const Color(
                            0xFF303F9F,
                          ).withOpacity(
                            0.5,
                          ),
                        false => const Color(
                            0xFF303F9F,
                          ),
                      },
                      borderRadius: BorderRadius.all(
                        converter.radius(
                          12,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '운동 기록하기',
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
        ),
      );
}
