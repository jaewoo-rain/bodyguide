import 'dart:math';

import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/constant/values.dart';
import 'package:app/model/local/practice.dart';
import 'package:app/root/route/home/page/practice/modal/practice_summary_detail_sheet.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_do/practice_do_bloc.dart';
import 'package:app/root/route/home/page/practice/widget/practice_chip.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:intl/intl.dart';

class SummaryTile extends StatelessWidget {
  SummaryTile({
    DateTime? dateTime,
    // @Default(0) required int totalSet,
    this.totalSet = 0, // 기본값 제공
    this.totalVolume = 0,
    this.index = 0,
    required this.practiceList,
    required this.practiceSet,
    required this.prevBestWeights,
    required this.prevBestReps,
    super.key,
  })  : dateTime = dateTime ?? DateTime.now(),
        chips = _pick(dateTime: dateTime, practiceList: practiceList);

  final DateTime dateTime;
  final List<PracticeChip> chips;
  final int totalSet; // 오류 방지를 위해 기본값 필요
  final double totalVolume;
  final int index;
  final List<Practice> practiceList;
  final List<List<PracticeSet>> practiceSet;
  final List<double> prevBestWeights;
  final List<int> prevBestReps;

  static List<PracticeChip> _pick({
    required DateTime? dateTime,
    required List<Practice> practiceList,
    // required List<PracticeSet> practiceSet,
  }) {
    final List<PracticeChip> children = [
      PracticeChip(
        text: '등 운동',
        icon: Assets.icon.icPracticeTypeBack,
      ),
      PracticeChip(
        text: '가슴 운동',
        icon: Assets.icon.icPracticeTypeChest,
      ),
      PracticeChip(
        text: '하체 운동',
        icon: Assets.icon.icPracticeTypeLowerBody,
      ),
      PracticeChip(
        text: '팔 운동',
        icon: Assets.icon.icPracticeTypeArm,
      ),
      PracticeChip(
        text: '복근 운동',
        icon: Assets.icon.icPracticeTypeAbs,
      ),
      PracticeChip(
        text: '어깨 운동',
        icon: Assets.icon.icPracticeTypeShoulder,
      ),
      PracticeChip(
        text: '유산소 운동',
        icon: Assets.icon.icPracticeTypeAerobic,
      ),
      PracticeChip(
        text: '전신 운동',
        icon: Assets.icon.icPracticeTypeWholeBody,
      ),
      ////////////////////////ㅍ없는 운동
      PracticeChip(
        text: '전완근 운동',
        icon: Assets.icon.icPracticeTypeWholeBody,
      ),
      PracticeChip(
        text: '코어 운동',
        icon: Assets.icon.icPracticeTypeWholeBody,
      ),
      PracticeChip(
        text: '이두 운동',
        icon: Assets.icon.icPracticeTypeWholeBody,
      ),
      PracticeChip(
        text: '삼두 운동',
        icon: Assets.icon.icPracticeTypeWholeBody,
      ),
    ];

    if (dateTime != null) {
      final Random random = Random(
        dateTime.day,
      );

      print(practiceList);
      List<PracticeChip> results = [];
      for (var practice in practiceList) {
        for (var type in children) {
          // print('practice : ${practice.category}');
          // print('type.text: ${type.text}');
          if (practice.category == type.text) {
            results.add(type);
            // print('타입 : $type');
          }
        }
      }
      // List<PracticeChip> results = [
      //   PracticeChip(
      //     text: '유산소 운동',
      //     icon: Assets.icon.icPracticeTypeAerobic,
      //   ),
      //   PracticeChip(
      //     text: '전신 운동',
      //     icon: Assets.icon.icPracticeTypeWholeBody,
      //   ),
      // ];

      return results;
    } else {
      return children;
    }
  }

  @override
  Widget build(BuildContext context) => DecoratedBox(
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
              16,
            ),
            right: App.instance.overlay.relativeScreenWidth(
              20,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BysonAspectRatio(
                designWidth: 299,
                designHeight: 38,
                decoration: (converter) => BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: const Color(
                        0xFFE5E5EC,
                      ),
                      width: converter.h(
                        1,
                      ),
                    ),
                  ),
                ),
                builder: (converter) => Stack(
                  children: [
                    PositionedDirectional(
                      top: 0,
                      start: 0,
                      height: converter.h(
                        30,
                      ),
                      child: Text(
                        DateFormat('MM월 dd일 (EEE)', 'ko').format(dateTime),
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
                    ),
                    PositionedDirectional(
                      top: converter.h(
                        6,
                      ),
                      end: 0,
                      height: converter.h(
                        18,
                      ),
                      child: BysonCupertinoButton.solid(
                        onPressed: () {
                          List<PracticeRecord> records = [];
                          for (var index = 0;
                              index < practiceList.length;
                              index++) {
                            print('practiceList[index] ${practiceList[index]}');
                            // print('practiceSet: ${practiceSet[index][0]}');
                            print('prevBestReps:- ${prevBestReps[index]}');

                            records.add(PracticeRecord(
                              practice: practiceList[index],
                              // sets: [PracticeSet(weight: '100', count: '10')],
                              sets: practiceSet[index],
                              prevBestRep: prevBestReps[index],
                              prevBestWeight: prevBestWeights[index],
                            ));
                          }
                          print('records: $records');

                          PracticeSummaryDetailSheet.show(
                              context: context, records: records);
                          // PracticeSummaryDetailSheet.show(
                          //     context: context,
                          //     records: [
                          //       PracticeRecord(
                          //         practice: allPractices[0], // 첫 번째 운동 데이터 사용
                          //         sets: [
                          //           PracticeSet(
                          //               weight: '100',
                          //               count: '10'), // 무게: 100, 횟수: 10
                          //           PracticeSet(
                          //               weight: '120',
                          //               count: '8'), // 무게: 120, 횟수: 8
                          //         ],
                          //       ),
                          //       PracticeRecord(
                          //         practice: allPractices[100], // 두 번째 운동 데이터 사용
                          //         sets: [
                          //           PracticeSet(
                          //               weight: '80',
                          //               count: '12'), // 무게: 80, 횟수: 12
                          //           PracticeSet(
                          //               weight: '90',
                          //               count: '10'), // 무게: 90, 횟수: 10
                          //         ],
                          //       ),
                          //     ]);
                        },
                        minSize: 0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              // practiceList[0].name,
                              '더보기',
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
              BysonAspectRatio(
                designWidth: 299,
                designHeight: 90,
                builder: (converter) => Stack(
                  children: [
                    PositionedDirectional(
                      top: converter.h(
                        16,
                      ),
                      start: 0,
                      height: converter.h(
                        27,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '총 수행세트',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              // height: 1.5,
                              fontSize: converter.h(
                                14,
                              ),
                              color: const Color(
                                0xFF111111,
                              ),
                              fontWeight: FontWeightAlias.regular,
                              letterSpacing: converter.lt(
                                fontSize: 14,
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
                            totalSet.toString(),
                            textAlign: TextAlign.start,
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
                          ),
                        ],
                      ),
                    ),
                    PositionedDirectional(
                      top: converter.h(
                        47,
                      ),
                      start: 0,
                      height: converter.h(
                        27,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '총 수행볼륨',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              // height: 1.5,
                              fontSize: converter.h(
                                14,
                              ),
                              color: const Color(
                                0xFF111111,
                              ),
                              fontWeight: FontWeightAlias.regular,
                              letterSpacing: converter.lt(
                                fontSize: 14,
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
                            '${NumberFormat('#,###').format(totalVolume)}kg',
                            // '${totalVolume}kg',
                            // '8,630kg',
                            textAlign: TextAlign.start,
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Wrap(
                spacing: App.instance.overlay.relativeScreenWidth(
                  8,
                ),
                runSpacing: App.instance.overlay.relativeScreenHeight(
                  8,
                ),
                children: chips,
              ),
            ],
          ),
        ),
      );
}
