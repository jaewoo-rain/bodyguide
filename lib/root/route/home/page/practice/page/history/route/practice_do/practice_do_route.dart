import 'dart:ffi';

import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/constant/values.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/model/local/practice.dart';
import 'package:app/root/route/home/page/practice/page/history/practice_history_bloc.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_do/practice_do_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:byson_switcher/byson_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:intl/intl.dart';

class PracticeDoRoute extends StatelessWidget {
  const PracticeDoRoute({
    required this.practices,
    required this.practiceHistoryBloc,
    super.key,
  });

  final List<Practice> practices;
  final PracticeHistoryBloc practiceHistoryBloc;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => PracticeDoBloc(
            practices: practices, practiceHistoryBloc: practiceHistoryBloc),
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
                      PositionedDirectional(
                        top: 0,
                        end: 0,
                        bottom: 0,
                        width: converter.h(
                          56,
                        ),
                        child: BysonCupertinoButton.solid(
                          onPressed: () {
                            context.read<PracticeDoBloc>().add(
                                  const PracticeDoEvent.submit(submit: false),
                                );
                          },
                          child: const Center(
                              child: Text(
                            '저장',
                            style: TextStyle(color: Colors.black),
                          )),
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
            body: BlocBuilder<PracticeDoBloc, PracticeDoState>(
              buildWhen: (previous, current) =>
                  (previous.records != current.records),
              builder: (context, state) => Column(
                children: [
                  BysonAspectRatio.padding(
                    designWidth: designWidth,
                    designHeight: 109,
                    designPadding: const EdgeInsets.only(
                      top: 29,
                      left: 20,
                      right: 20,
                      bottom: 16,
                    ),
                    builder: (converter) => Stack(
                      children: [
                        PositionedDirectional(
                          top: 0,
                          start: 0,
                          height: converter.h(
                            24,
                          ),
                          child: Text(
                            DateFormat(
                              'MM월 dd일 EEEE',
                              'ko',
                            ).format(
                              DateTime.now(),
                            ),
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
                          top: converter.h(
                            3,
                          ),
                          end: 0,
                          height: converter.h(
                            18,
                          ),
                          child: BysonCupertinoButton.solid(
                            onPressed: () => App.instance.navigator
                                .push(
                              Routes.practiceEdit.path,
                              extra: state.records,
                            )
                                .then(
                              (value) {
                                if ((value != null) && (value is List<int>)) {
                                  if (context.mounted) {
                                    context.read<PracticeDoBloc>().add(
                                          PracticeDoEvent.removePractices(
                                            practices: value,
                                          ),
                                        );
                                  }
                                }
                              },
                            ),
                            child: Text(
                              '수정하기',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                height: 1.5,
                                fontSize: converter.h(
                                  12,
                                ),
                                color: const Color(
                                  0xFF888888,
                                ),
                                fontWeight: FontWeightAlias.semiBold,
                                letterSpacing: converter.lt(
                                  fontSize: 12,
                                  percent: -2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          bottom: 0,
                          start: 0,
                          height: converter.h(
                            24,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '총 수행세트',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  // height: 1.5,
                                  fontSize: converter.h(
                                    16,
                                  ),
                                  color: const Color(
                                    0xFF111111,
                                  ),
                                  fontWeight: FontWeightAlias.regular,
                                  letterSpacing: converter.lt(
                                    fontSize: 16,
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
                              Text(
                                '${state.records.fold(0, (total, record) => total + record.sets.length)}세트',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  // height: 1.5,
                                  fontSize: converter.h(
                                    16,
                                  ),
                                  color: const Color(
                                    0xFF3D5DD3,
                                  ),
                                  fontWeight: FontWeightAlias.semiBold,
                                  letterSpacing: converter.lt(
                                    fontSize: 16,
                                    percent: -2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        PositionedDirectional(
                          bottom: 0,
                          end: 0,
                          height: converter.h(
                            24,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '총 수행볼륨',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  // height: 1.5,
                                  fontSize: converter.h(
                                    16,
                                  ),
                                  color: const Color(
                                    0xFF111111,
                                  ),
                                  fontWeight: FontWeightAlias.regular,
                                  letterSpacing: converter.lt(
                                    fontSize: 16,
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
                              Text(
                                '${state.records.expand((record) => record.sets).fold(0.0, (total, set) => total + (double.tryParse(set.weight) ?? 0.0))}kg',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  // height: 1.5,
                                  fontSize: converter.h(
                                    16,
                                  ),
                                  color: const Color(
                                    0xFF3D5DD3,
                                  ),
                                  fontWeight: FontWeightAlias.semiBold,
                                  letterSpacing: converter.lt(
                                    fontSize: 16,
                                    percent: -2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SafeArea(
                      child: ListView.separated(
                        itemCount: state.records.length + 1,
                        separatorBuilder: (context, index) =>
                            const BysonSeparator(
                          designWidth: designWidth,
                          designHeight: 16,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: App.instance.overlay.relativeScreenWidth(
                            20,
                          ),
                        ),
                        itemBuilder: (context, practiceIndex) => DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              App.instance.overlay.relativeScreenWidth(
                                12,
                              ),
                            ),
                            border: Border.all(
                              color: const Color(
                                0xFFE5E5EC,
                              ),
                              width: App.instance.overlay.relativeScreenWidth(
                                1,
                              ),
                            ),
                          ),
                          child: switch (practiceIndex < state.records.length) {
                            true => Theme(
                                data: Theme.of(
                                  context,
                                ).copyWith(
                                  dividerColor: Colors.transparent,
                                  splashFactory: NoSplash.splashFactory,
                                ),
                                child: ListTileTheme(
                                  minVerticalPadding: 0,
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: App.instance.overlay
                                        .relativeScreenWidth(
                                      0,
                                    ),
                                    horizontal: App.instance.overlay
                                        .relativeScreenHeight(
                                      0,
                                    ),
                                  ),
                                  selectedColor: Colors.white,
                                  selectedTileColor: Colors.white,
                                  child: ExpansionTile(
                                    tilePadding: EdgeInsets.symmetric(
                                      vertical: App.instance.overlay
                                          .relativeScreenHeight(
                                        16,
                                      ),
                                      horizontal: App.instance.overlay
                                          .relativeScreenWidth(
                                        16,
                                      ),
                                    ),
                                    childrenPadding: EdgeInsets.zero,
                                    title: BysonAspectRatio(
                                      designWidth: 260,
                                      designHeight: 71,
                                      builder: (converter) => Stack(
                                        children: [
                                          PositionedDirectional(
                                            top: converter.h(
                                              5.5,
                                            ),
                                            start: 0,
                                            width: converter.w(
                                              60,
                                            ),
                                            height: converter.h(
                                              60,
                                            ),
                                            child:
                                                Assets.image.imgPractice.image(
                                              fit: BoxFit.contain,
                                              alignment: Alignment.center,
                                              width: converter.w(
                                                60,
                                              ),
                                              height: converter.h(
                                                60,
                                              ),
                                            ),
                                          ),
                                          PositionedDirectional(
                                            top: 0,
                                            start: converter.w(
                                              76,
                                            ),
                                            height: converter.h(
                                              27,
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  state.records[practiceIndex]
                                                      .practice.name,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    // height: 1.5,
                                                    fontSize: converter.h(
                                                      16,
                                                    ),
                                                    color: const Color(
                                                      0xFF111111,
                                                    ),
                                                    fontWeight: FontWeightAlias
                                                        .semiBold,
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
                                                DecoratedBox(
                                                  decoration: BoxDecoration(
                                                    color: const Color(
                                                      0xFFC7D7F6,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      converter.radius(
                                                        8,
                                                      ),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: converter.w(
                                                        6,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        state
                                                            .records[
                                                                practiceIndex]
                                                            .practice
                                                            .category,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          // height: 1.5,
                                                          fontSize: converter.h(
                                                            12,
                                                          ),
                                                          color: const Color(
                                                            0xFF3D5DD3,
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
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          PositionedDirectional(
                                            top: converter.h(
                                              31,
                                            ),
                                            start: converter.w(
                                              76,
                                            ),
                                            height: converter.h(
                                              18,
                                            ),
                                            child: Text(
                                              '이전 최고 수행 무게 240kg 3회',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                // height: 1.5,
                                                fontSize: converter.h(
                                                  12,
                                                ),
                                                color: const Color(
                                                  0xFF505050,
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
                                          PositionedDirectional(
                                            bottom: 0,
                                            start: converter.w(
                                              76,
                                            ),
                                            height: converter.h(
                                              18,
                                            ),
                                            child: Text(
                                              '${state.records[practiceIndex].sets.length}세트 ${state.records[practiceIndex].sets.fold(0.0, (total, set) => total + (double.tryParse(set.weight) ?? 0.0))}kg',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                // height: 1.5,
                                                fontSize: converter.h(
                                                  12,
                                                ),
                                                color: const Color(
                                                  0xFF505050,
                                                ),
                                                fontWeight:
                                                    FontWeightAlias.semiBold,
                                                letterSpacing: converter.lt(
                                                  fontSize: 12,
                                                  percent: -2,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    children: [
                                      ListView.separated(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        padding: EdgeInsets.only(
                                          left: App.instance.overlay
                                              .relativeScreenWidth(
                                            16,
                                          ),
                                          right: App.instance.overlay
                                              .relativeScreenWidth(
                                            16,
                                          ),
                                          top: App.instance.overlay
                                              .relativeScreenHeight(
                                            24 - 16,
                                          ),
                                          bottom: App.instance.overlay
                                              .relativeScreenHeight(
                                            16,
                                          ),
                                        ),
                                        itemCount: state
                                            .records[practiceIndex].sets.length,
                                        separatorBuilder: (context, index) =>
                                            const BysonSeparator(
                                          designWidth: 303,
                                          designHeight: 8,
                                        ),
                                        itemBuilder: (context, setIndex) =>
                                            BysonAspectRatio(
                                          designWidth: 303,
                                          designHeight: 76,
                                          decoration: (converter) =>
                                              BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              App.instance.overlay
                                                  .relativeScreenWidth(
                                                4,
                                              ),
                                            ),
                                            border: Border.all(
                                              color: const Color(
                                                0xFFE5E5EC,
                                              ),
                                              width: converter.h(
                                                1,
                                              ),
                                            ),
                                          ),
                                          builder: (converter) => Stack(
                                            children: [
                                              PositionedDirectional(
                                                start: converter.w(
                                                  16,
                                                ),
                                                width: converter.w(
                                                  79.67,
                                                ),
                                                top: 0,
                                                bottom: 0,
                                                child: Center(
                                                  child: Text(
                                                    '${setIndex + 1}세트',
                                                    textAlign: TextAlign.center,
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
                                                              .medium,
                                                      letterSpacing:
                                                          converter.lt(
                                                        fontSize: 16,
                                                        percent: -2,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              PositionedDirectional(
                                                  start: converter.w(
                                                    111.67,
                                                  ),
                                                  width: converter.w(
                                                    79.67,
                                                  ),
                                                  top: converter.h(
                                                    16,
                                                  ),
                                                  bottom: converter.h(
                                                    16,
                                                  ),
                                                  child: CupertinoTextField(
                                                    controller: context
                                                        .read<PracticeDoBloc>()
                                                        .textEditingControllers[
                                                            practiceIndex]
                                                            [setIndex]
                                                        .first,
                                                    enabled: state
                                                            .records[
                                                                practiceIndex]
                                                            .practice
                                                            .thresholdType ==
                                                        1,
                                                    keyboardType:
                                                        TextInputType.text,
                                                    textInputAction:
                                                        TextInputAction.next,
                                                    onChanged: (value) => context
                                                        .read<PracticeDoBloc>()
                                                        .add(
                                                          PracticeDoEvent
                                                              .onWeightChanged(
                                                            practiceIndex:
                                                                practiceIndex,
                                                            setIndex: setIndex,
                                                            value: value,
                                                          ),
                                                        ),
                                                    inputFormatters: [
                                                      FilteringTextInputFormatter
                                                          .deny(
                                                        ' ',
                                                      ),
                                                    ],
                                                    cursorColor: const Color(
                                                      0xFF111111,
                                                    ),
                                                    padding: EdgeInsets.only(
                                                      left: converter.w(
                                                        8,
                                                      ),
                                                      right: converter.w(
                                                        8,
                                                      ),
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    textAlignVertical:
                                                        TextAlignVertical
                                                            .center,
                                                    placeholder: '무게',
                                                    placeholderStyle: TextStyle(
                                                      height: 1.5,
                                                      fontSize: converter.h(
                                                        16,
                                                      ),
                                                      color: const Color(
                                                        0xFFB0B0B0,
                                                      ),
                                                      fontWeight:
                                                          FontWeightAlias
                                                              .regular,
                                                      letterSpacing:
                                                          converter.lt(
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
                                                      fontWeight:
                                                          FontWeightAlias
                                                              .regular,
                                                      letterSpacing:
                                                          converter.lt(
                                                        fontSize: 16,
                                                        percent: -2,
                                                      ),
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: state
                                                                  .records[
                                                                      practiceIndex]
                                                                  .practice
                                                                  .thresholdType ==
                                                              1
                                                          ? const Color(
                                                              0xFFF9F9F9)
                                                          : const Color(
                                                              0xFFEEEEEE), // 비활성화됐을 때의 배경색
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        App.instance.overlay
                                                            .relativeScreenWidth(
                                                          4,
                                                        ),
                                                      ),
                                                      border: Border.all(
                                                        color: const Color(
                                                          0xFFDDDDDD,
                                                        ),
                                                        width: converter.h(
                                                          1,
                                                        ),
                                                      ),
                                                    ),
                                                  )),
                                              PositionedDirectional(
                                                end: converter.w(
                                                  16,
                                                ),
                                                width: converter.w(
                                                  79.67,
                                                ),
                                                top: converter.h(
                                                  16,
                                                ),
                                                bottom: converter.h(
                                                  16,
                                                ),
                                                child: CupertinoTextField(
                                                  controller: context
                                                      .read<PracticeDoBloc>()
                                                      .textEditingControllers[
                                                          practiceIndex]
                                                          [setIndex]
                                                      .last,
                                                  keyboardType:
                                                      TextInputType.text,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  onChanged: (value) => context
                                                      .read<PracticeDoBloc>()
                                                      .add(
                                                        PracticeDoEvent
                                                            .onCountChanged(
                                                          practiceIndex:
                                                              practiceIndex,
                                                          setIndex: setIndex,
                                                          value: value,
                                                        ),
                                                      ),
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .deny(
                                                      ' ',
                                                    ),
                                                  ],
                                                  cursorColor: const Color(
                                                    0xFF111111,
                                                  ),
                                                  padding: EdgeInsets.only(
                                                    left: converter.w(
                                                      8,
                                                    ),
                                                    right: converter.w(
                                                      8,
                                                    ),
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  textAlignVertical:
                                                      TextAlignVertical.center,
                                                  placeholder: '횟수',
                                                  placeholderStyle: TextStyle(
                                                    height: 1.5,
                                                    fontSize: converter.h(
                                                      16,
                                                    ),
                                                    color: const Color(
                                                      0xFFB0B0B0,
                                                    ),
                                                    fontWeight:
                                                        FontWeightAlias.regular,
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
                                                    fontWeight:
                                                        FontWeightAlias.regular,
                                                    letterSpacing: converter.lt(
                                                      fontSize: 16,
                                                      percent: -2,
                                                    ),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: const Color(
                                                      0xFFF9F9F9,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      App.instance.overlay
                                                          .relativeScreenWidth(
                                                        4,
                                                      ),
                                                    ),
                                                    border: Border.all(
                                                      color: const Color(
                                                        0xFFDDDDDD,
                                                      ),
                                                      width: converter.h(
                                                        1,
                                                      ),
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
                              ),
                            false => BysonAspectRatio(
                                designWidth: 335,
                                designHeight: 92,
                                builder: (converter) =>
                                    BysonCupertinoButton.solid(
                                  onPressed: () => App.instance.navigator
                                      .push(
                                    Routes.practiceRecord.path,
                                  )
                                      .then(
                                    (value) {
                                      if ((value != null) &&
                                          (value is Set<Practice>)) {
                                        if (context.mounted) {
                                          context.read<PracticeDoBloc>().add(
                                                PracticeDoEvent.addPractices(
                                                  practices: value,
                                                ),
                                              );
                                        }
                                      }
                                    },
                                  ),
                                  child: Center(
                                    child: Icon(
                                      IconsaxPlusLinear.add,
                                      color: const Color(
                                        0xFF111111,
                                      ),
                                      size: converter.h(
                                        28,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
