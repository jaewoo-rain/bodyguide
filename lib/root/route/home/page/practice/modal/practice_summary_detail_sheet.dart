import 'dart:math';

import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/constant/values.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_do/practice_do_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

// summary_tile 더보기 눌렀을때 하단에서 올라오는 것
class PracticeSummaryDetailSheet extends StatelessWidget {
  // static List<PracticeRecord> _getRandomPractices() {
  //   final Random random = Random();
  //   final count = random.nextInt(4) + 2;
  //
  //   final allPractices = practices.values.expand((list) => list).toList()
  //     ..shuffle();
  //
  //   return allPractices
  //       .take(
  //         count.clamp(
  //           4,
  //           min(
  //             7,
  //             allPractices.length,
  //           ),
  //         ),
  //       )
  //       .map(
  //         (element) => PracticeRecord(
  //           practice: element,
  //           sets: List.generate(
  //             random.nextInt(4) + 1,
  //             (index) => PracticeSet(
  //               weight: '${random.nextInt(50) + 200}',
  //               count: '${random.nextInt(2) + 3}',
  //             ),
  //           ),
  //         ),
  //       )
  //       .toList();
  // }

  // static List<PracticeRecord> _getFixedPractices() {
  //   final allPractices = practices.values.expand((list) => list).toList();
  //
  //   return [
  //     PracticeRecord(
  //       practice: allPractices[0], // 첫 번째 운동 데이터 사용
  //       sets: [
  //         PracticeSet(weight: '100', count: '10'), // 무게: 100, 횟수: 10
  //         PracticeSet(weight: '120', count: '8'), // 무게: 120, 횟수: 8
  //       ],
  //     ),
  //     PracticeRecord(
  //       practice: allPractices[1], // 두 번째 운동 데이터 사용
  //       sets: [
  //         PracticeSet(weight: '80', count: '12'), // 무게: 80, 횟수: 12
  //         PracticeSet(weight: '90', count: '10'), // 무게: 90, 횟수: 10
  //       ],
  //     ),
  //   ];
  // }

  static Map<int, Map<int, List<TextEditingController>>> _generateControllers({
    required List<PracticeRecord> records,
  }) {
    final controllers = <int, Map<int, List<TextEditingController>>>{};

    for (int recordIndex = 0; recordIndex < records.length; recordIndex++) {
      final practiceSets = records[recordIndex].sets;
      controllers[recordIndex] = {};

      print('practiceSets : $practiceSets');
      for (int setIndex = 0; setIndex < practiceSets.length; setIndex++) {
        final weightController = TextEditingController(
          text: practiceSets[setIndex].weight,
        );
        // print(
        // "practiceSets[setIndex].weight: ${practiceSets[setIndex].weight}");
        final countController = TextEditingController(
          text: practiceSets[setIndex].count,
        );
        // print("practiceSets[setIndex].count: ${practiceSets[setIndex].count}");

        controllers[recordIndex]![setIndex] = [
          weightController,
          countController
        ];
        // print('한턴');
      }
    }
    print('records11: ${records[0].practice.exerciseId}');

    return controllers;
  }

  static Future<void> show(
      {required BuildContext context, required List<PracticeRecord> records}) {
    // final List<PracticeRecord> records = _getFixedPractices();

    final Map<int, Map<int, List<TextEditingController>>> controllers =
        _generateControllers(
      records: records,
    );

    return showMaterialModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            App.instance.overlay.relativeScreenWidth(
              16,
            ),
          ),
          topRight: Radius.circular(
            App.instance.overlay.relativeScreenWidth(
              16,
            ),
          ),
        ),
      ),
      builder: (context) => PracticeSummaryDetailSheet._(
        records: records,
        controllers: controllers,
      ),
    );
  }

  const PracticeSummaryDetailSheet._({
    required this.records,
    required this.controllers,
  });

  final List<PracticeRecord> records;
  final Map<int, Map<int, List<TextEditingController>>> controllers;

  @override
  Widget build(BuildContext context) => ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: App.instance.overlay.screenSize.height * 0.75,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BysonAspectRatio(
              designWidth: designWidth,
              designHeight: 72,
              decoration: (converter) => BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  width: converter.h(
                    1,
                  ),
                  color: const Color(
                    0xFFB0B0B0,
                  ),
                ),
              )),
              builder: (converter) => Stack(
                children: [
                  Center(
                    child: Text(
                      DateFormat(
                        'MM월 dd일 (EEEE)',
                        'ko',
                      ).format(DateTime.now()),
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.5,
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
                  )
                ],
              ),
            ),
            BysonAspectRatio.padding(
              designWidth: designWidth,
              designHeight: 74,
              designPadding: const EdgeInsets.only(
                left: 20.5,
                right: 20.5,
                top: 26,
                bottom: 24,
              ),
              builder: (converter) => Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '총 수행세트',
                          textAlign: TextAlign.start,
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
                          '${records.fold(0.0, (result, record) => result + record.sets.length).toInt()}세트',

                          // '30세트',
                          textAlign: TextAlign.start,
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '총 수행볼륨',
                          textAlign: TextAlign.start,
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
                          // '${records.fold(0.0,(result,sets) => sets.fold(0.0, (total, set) =>
                          // total + (double.tryParse(set.count) ?? 0.0) * (double.tryParse(set.weight) ?? 0.0)))}kg'

                          '${records.fold(0.0, (result, record) => result + record.sets.fold(0.0, (total, set) => total + (double.tryParse(set.count) ?? 0.0) * (double.tryParse(set.weight) ?? 0.0)))}kg',
                          // '8,630kg',
                          textAlign: TextAlign.start,
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
                top: false,
                child: ListView.separated(
                  controller: ModalScrollController.of(context),
                  shrinkWrap: true,
                  itemCount: records.length, // 바꾸기 운동 종류만큼
                  separatorBuilder: (context, index) => const BysonSeparator(
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
                    child: Theme(
                      data: Theme.of(
                        context,
                      ).copyWith(
                        dividerColor: Colors.transparent,
                        splashFactory: NoSplash.splashFactory,
                      ),
                      child: ListTileTheme(
                        minVerticalPadding: 0,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: App.instance.overlay.relativeScreenWidth(
                            0,
                          ),
                          horizontal: App.instance.overlay.relativeScreenHeight(
                            0,
                          ),
                        ),
                        selectedColor: Colors.white,
                        selectedTileColor: Colors.white,
                        child: ExpansionTile(
                          tilePadding: EdgeInsets.symmetric(
                            vertical: App.instance.overlay.relativeScreenHeight(
                              16,
                            ),
                            horizontal:
                                App.instance.overlay.relativeScreenWidth(
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
                                  child: Assets.image.imgPractice.image(
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        records[practiceIndex]
                                            .practice
                                            .name, // 바꾸기 운동이름
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          // height: 1.5,
                                          fontSize: converter.h(
                                            16,
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
                                          borderRadius: BorderRadius.all(
                                            converter.radius(
                                              8,
                                            ),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: converter.w(
                                              6,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              records[practiceIndex]
                                                  .practice
                                                  .category, // 바꾸기 운동종류
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                // height: 1.5,
                                                fontSize: converter.h(
                                                  12,
                                                ),
                                                color: const Color(
                                                  0xFF3D5DD3,
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
                                    records[practiceIndex]
                                                .practice
                                                .thresholdType ==
                                            1
                                        ? '이전 최고 수행 무게 ${records[practiceIndex].prevBestWeight}kg ${records[practiceIndex].prevBestRep}회'
                                        : '이전 최고 수행 횟수 ${records[practiceIndex].prevBestRep}회',

                                    // '이전 최고 수행 무게 240kg 3회', // 바꾸기 최고무게, 횟수
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      // height: 1.5,
                                      fontSize: converter.h(
                                        12,
                                      ),
                                      color: const Color(
                                        0xFF505050,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
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
                                    // 바꾸기
                                    '${records[practiceIndex].sets.length}세트 ${records[practiceIndex].sets.fold(0.0, (total, set) => total + (double.tryParse(set.count) ?? 0.0) * (double.tryParse(set.weight) ?? 0.0))}kg',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      // height: 1.5,
                                      fontSize: converter.h(
                                        12,
                                      ),
                                      color: const Color(
                                        0xFF505050,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
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
                              physics: const NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.only(
                                left: App.instance.overlay.relativeScreenWidth(
                                  16,
                                ),
                                right: App.instance.overlay.relativeScreenWidth(
                                  16,
                                ),
                                top: App.instance.overlay.relativeScreenHeight(
                                  24 - 16,
                                ),
                                bottom:
                                    App.instance.overlay.relativeScreenHeight(
                                  16,
                                ),
                              ),
                              itemCount: records[practiceIndex]
                                  .sets
                                  .length, // 바꾸기 세트수 만큼
                              separatorBuilder: (context, index) =>
                                  const BysonSeparator(
                                designWidth: 303,
                                designHeight: 8,
                              ),
                              itemBuilder: (context, setIndex) =>
                                  BysonAspectRatio(
                                designWidth: 303,
                                designHeight: 76,
                                decoration: (converter) => BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    App.instance.overlay.relativeScreenWidth(
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
                                            fontWeight: FontWeightAlias.medium,
                                            letterSpacing: converter.lt(
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
                                        controller: controllers[practiceIndex]
                                                ?[setIndex]
                                            ?.elementAt(0),
                                        keyboardType: TextInputType.text,
                                        textInputAction: TextInputAction.next,
                                        // readOnly: true,
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
                                        placeholder: '무게',
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
                                        decoration: BoxDecoration(
                                          color: const Color(
                                            0xFFF9F9F9,
                                          ),
                                          borderRadius: BorderRadius.circular(
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
                                        controller: controllers[practiceIndex]
                                                ?[setIndex]
                                            ?.elementAt(1),
                                        keyboardType: TextInputType.text,
                                        textInputAction: TextInputAction.next,
                                        readOnly: true,
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
                                        decoration: BoxDecoration(
                                          color: const Color(
                                            0xFFF9F9F9,
                                          ),
                                          borderRadius: BorderRadius.circular(
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
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
