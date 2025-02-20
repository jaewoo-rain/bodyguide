import 'dart:math';

import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/model/local/nutrient_record.dart';
import 'package:app/root/route/home/page/nutrient/modal/nutrient_summary_detail_sheet.dart';
import 'package:app/root/route/home/page/practice/modal/practice_summary_detail_sheet.dart';
import 'package:app/root/route/home/page/practice/widget/practice_chip.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:intl/intl.dart';

class NutrientSummaryTile extends StatelessWidget {
  NutrientSummaryTile({
    required DateTime dateTime,
    super.key,
  })  : record = _pick(
          dateTime: dateTime,
        );

  static NutrientRecord _pick({
    required DateTime dateTime,
  }) {
    final random = Random();

    // Helper function to generate random double within ±5%
    double randomize(double value) {
      double offset = value * 0.05;
      return value + random.nextDouble() * 2 * offset - offset;
    }

    // Define the base values as constants
    const double weight = 80;
    const double kcal = 2500;
    const double carbohydrate = 100;
    const double protein = 20;
    const double fat = 12;
    const double carbohydrateSugar = 1.5;
    const double carbohydrateFiber = 2.5;
    const double saturatedFat = 3;
    const double unsaturatedFat = 3;
    const double transFat = 3;
    const double cholesterol = 100;
    const double fiber = 1.5;
    const double sodium = 600;
    const double potassium = 270;

    // Generate a random day within the same month

    // Generate a single NutrientRecord
    return NutrientRecord(
      dateTime: dateTime,
      weight: randomize(weight),
      kcal: randomize(kcal),
      carbohydrate: randomize(carbohydrate),
      protein: randomize(protein),
      fat: randomize(fat),
      carbohydrateSugar: randomize(carbohydrateSugar),
      carbohydrateFiber: randomize(carbohydrateFiber),
      saturatedFat: randomize(saturatedFat),
      unsaturatedFat: randomize(unsaturatedFat),
      transFat: randomize(transFat),
      cholesterol: randomize(cholesterol),
      fiber: randomize(fiber),
      sodium: randomize(sodium),
      potassium: randomize(potassium),
    );
  }

  final NutrientRecord record;

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
              20,
            ),
            right: App.instance.overlay.relativeScreenWidth(
              16,
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
                        DateFormat('MM월 dd일 (EEE)', 'ko').format(record.dateTime),
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
                        onPressed: () => NutrientSummaryDetailSheet.show(
                          context: context,
                          record: record,
                        ),
                        minSize: 0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
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
              const BysonSeparator(
                designWidth: 299,
                designHeight: 16,
              ),
              BysonAspectRatio(
                designWidth: 299,
                designHeight: 27,
                builder: (converter) => Row(
                  children: [
                    Text(
                      '체중',
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
                      '${record.weight.toStringAsFixed(1)}kg',
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
                    VerticalDivider(
                      color: Colors.transparent,
                      width: converter.w(
                        16,
                      ),
                      thickness: 0,
                    ),
                    Text(
                      '섭취 칼로리',
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
                      '${record.kcal.toStringAsFixed(0)}kcal',
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
                // builder: (converter) => Stack(
                //   children: [
                //     PositionedDirectional(
                //       top: converter.h(
                //         16,
                //       ),
                //       start: 0,
                //       height: converter.h(
                //         27,
                //       ),
                //       child: Row(
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Text(
                //             '총 수행세트',
                //             textAlign: TextAlign.start,
                //             style: TextStyle(
                //               // height: 1.5,
                //               fontSize: converter.h(
                //                 14,
                //               ),
                //               color: const Color(
                //                 0xFF111111,
                //               ),
                //               fontWeight: FontWeightAlias.regular,
                //               letterSpacing: converter.lt(
                //                 fontSize: 14,
                //                 percent: -2,
                //               ),
                //             ),
                //           ),
                //           VerticalDivider(
                //             color: Colors.transparent,
                //             width: converter.w(
                //               4,
                //             ),
                //             thickness: 0,
                //           ),
                //           Text(
                //             '30세트',
                //             textAlign: TextAlign.start,
                //             style: TextStyle(
                //               // height: 1.5,
                //               fontSize: converter.h(
                //                 18,
                //               ),
                //               color: const Color(
                //                 0xFF111111,
                //               ),
                //               fontWeight: FontWeightAlias.semiBold,
                //               letterSpacing: converter.lt(
                //                 fontSize: 18,
                //                 percent: -2,
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //     PositionedDirectional(
                //       top: converter.h(
                //         47,
                //       ),
                //       start: 0,
                //       height: converter.h(
                //         27,
                //       ),
                //       child: Row(
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Text(
                //             '총 수행볼륨',
                //             textAlign: TextAlign.start,
                //             style: TextStyle(
                //               // height: 1.5,
                //               fontSize: converter.h(
                //                 14,
                //               ),
                //               color: const Color(
                //                 0xFF111111,
                //               ),
                //               fontWeight: FontWeightAlias.regular,
                //               letterSpacing: converter.lt(
                //                 fontSize: 14,
                //                 percent: -2,
                //               ),
                //             ),
                //           ),
                //           VerticalDivider(
                //             color: Colors.transparent,
                //             width: converter.w(
                //               4,
                //             ),
                //             thickness: 0,
                //           ),
                //           Text(
                //             '8,630kg',
                //             textAlign: TextAlign.start,
                //             style: TextStyle(
                //               // height: 1.5,
                //               fontSize: converter.h(
                //                 18,
                //               ),
                //               color: const Color(
                //                 0xFF111111,
                //               ),
                //               fontWeight: FontWeightAlias.semiBold,
                //               letterSpacing: converter.lt(
                //                 fontSize: 18,
                //                 percent: -2,
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
              ),
              const BysonSeparator(
                designWidth: 299,
                designHeight: 16,
              ),
              BysonAspectRatio(
                designWidth: 299,
                designHeight: 21,
                builder: (converter) => Row(
                  children: [
                    Container(
                      width: converter.w(
                        8,
                      ),
                      height: converter.h(
                        8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          converter.radius(
                            2,
                          ),
                        ),
                        color: const Color(
                          0xFF85ED6B,
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
                      '탄수화물',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        // height: 1.5,
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
                    VerticalDivider(
                      color: Colors.transparent,
                      width: converter.w(
                        4,
                      ),
                      thickness: 0,
                    ),
                    Text(
                      '${((record.carbohydrate / 200) * 100).toStringAsFixed(0)}%',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        // height: 1.5,
                        fontSize: converter.h(
                          14,
                        ),
                        color: const Color(
                          0xFF111111,
                        ),
                        fontWeight: FontWeightAlias.semiBold,
                        letterSpacing: converter.lt(
                          fontSize: 14,
                          percent: -2,
                        ),
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.transparent,
                      width: converter.w(
                        16,
                      ),
                      thickness: 0,
                    ),
                    Container(
                      width: converter.w(
                        8,
                      ),
                      height: converter.h(
                        8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          converter.radius(
                            2,
                          ),
                        ),
                        color: const Color(
                          0xFFFF6666,
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
                      '단백질',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        // height: 1.5,
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
                    VerticalDivider(
                      color: Colors.transparent,
                      width: converter.w(
                        4,
                      ),
                      thickness: 0,
                    ),
                    Text(
                      '${((record.protein / 200) * 100).toStringAsFixed(0)}%',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        // height: 1.5,
                        fontSize: converter.h(
                          14,
                        ),
                        color: const Color(
                          0xFF111111,
                        ),
                        fontWeight: FontWeightAlias.semiBold,
                        letterSpacing: converter.lt(
                          fontSize: 14,
                          percent: -2,
                        ),
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.transparent,
                      width: converter.w(
                        16,
                      ),
                      thickness: 0,
                    ),
                    Container(
                      width: converter.w(
                        8,
                      ),
                      height: converter.h(
                        8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          converter.radius(
                            2,
                          ),
                        ),
                        color: const Color(
                          0xFFFFD460,
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
                      '지방',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        // height: 1.5,
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
                    VerticalDivider(
                      color: Colors.transparent,
                      width: converter.w(
                        4,
                      ),
                      thickness: 0,
                    ),
                    Text(
                      '${((record.fat / 200) * 100).toStringAsFixed(0)}%',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        // height: 1.5,
                        fontSize: converter.h(
                          14,
                        ),
                        color: const Color(
                          0xFF111111,
                        ),
                        fontWeight: FontWeightAlias.semiBold,
                        letterSpacing: converter.lt(
                          fontSize: 14,
                          percent: -2,
                        ),
                      ),
                    ),
                  ],
                ),
                // builder: (converter) => Stack(
                //   children: [
                //     PositionedDirectional(
                //       top: converter.h(
                //         16,
                //       ),
                //       start: 0,
                //       height: converter.h(
                //         27,
                //       ),
                //       child: Row(
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Text(
                //             '총 수행세트',
                //             textAlign: TextAlign.start,
                //             style: TextStyle(
                //               // height: 1.5,
                //               fontSize: converter.h(
                //                 14,
                //               ),
                //               color: const Color(
                //                 0xFF111111,
                //               ),
                //               fontWeight: FontWeightAlias.regular,
                //               letterSpacing: converter.lt(
                //                 fontSize: 14,
                //                 percent: -2,
                //               ),
                //             ),
                //           ),
                //           VerticalDivider(
                //             color: Colors.transparent,
                //             width: converter.w(
                //               4,
                //             ),
                //             thickness: 0,
                //           ),
                //           Text(
                //             '30세트',
                //             textAlign: TextAlign.start,
                //             style: TextStyle(
                //               // height: 1.5,
                //               fontSize: converter.h(
                //                 18,
                //               ),
                //               color: const Color(
                //                 0xFF111111,
                //               ),
                //               fontWeight: FontWeightAlias.semiBold,
                //               letterSpacing: converter.lt(
                //                 fontSize: 18,
                //                 percent: -2,
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //     PositionedDirectional(
                //       top: converter.h(
                //         47,
                //       ),
                //       start: 0,
                //       height: converter.h(
                //         27,
                //       ),
                //       child: Row(
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Text(
                //             '총 수행볼륨',
                //             textAlign: TextAlign.start,
                //             style: TextStyle(
                //               // height: 1.5,
                //               fontSize: converter.h(
                //                 14,
                //               ),
                //               color: const Color(
                //                 0xFF111111,
                //               ),
                //               fontWeight: FontWeightAlias.regular,
                //               letterSpacing: converter.lt(
                //                 fontSize: 14,
                //                 percent: -2,
                //               ),
                //             ),
                //           ),
                //           VerticalDivider(
                //             color: Colors.transparent,
                //             width: converter.w(
                //               4,
                //             ),
                //             thickness: 0,
                //           ),
                //           Text(
                //             '8,630kg',
                //             textAlign: TextAlign.start,
                //             style: TextStyle(
                //               // height: 1.5,
                //               fontSize: converter.h(
                //                 18,
                //               ),
                //               color: const Color(
                //                 0xFF111111,
                //               ),
                //               fontWeight: FontWeightAlias.semiBold,
                //               letterSpacing: converter.lt(
                //                 fontSize: 18,
                //                 percent: -2,
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
              ),
              const BysonSeparator(
                designWidth: 299,
                designHeight: 16,
              ),
              BysonAspectRatio(
                designWidth: 299,
                designHeight: 81,
                builder: (converter) => Flex(
                  direction: Axis.horizontal,
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: BysonAspectRatio(
                        designWidth: 89,
                        designHeight: 81,
                        builder: (converter) => Stack(
                          children: [
                            PositionedDirectional(
                              top: 0,
                              height: converter.h(
                                24,
                              ),
                              start: 0,
                              end: 0,
                              child: Center(
                                child: Text(
                                  '탄수화물',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: converter.h(
                                      16,
                                    ),
                                    color: const Color(
                                      0xFF111111,
                                    ),
                                    fontWeight: FontWeightAlias.semiBold,
                                    letterSpacing: converter.lt(
                                      fontSize: 16,
                                      percent: -2,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            PositionedDirectional(
                              top: converter.h(
                                32,
                              ),
                              height: converter.h(
                                20,
                              ),
                              start: 0,
                              end: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    converter.radius(
                                      4,
                                    ),
                                  ),
                                  color: const Color(
                                    0xFFE1FFD9,
                                  ),
                                ),
                              ),
                            ),
                            PositionedDirectional(
                              top: converter.h(
                                32,
                              ),
                              height: converter.h(
                                20,
                              ),
                              start: 0,
                              width: converter.realSize.width * (record.carbohydrate / 200),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    converter.radius(
                                      4,
                                    ),
                                  ),
                                  color: const Color(
                                    0xFF85ED6B,
                                  ),
                                ),
                              ),
                            ),

                            PositionedDirectional(
                              bottom: 0,
                              height: converter.h(
                                24,
                              ),
                              start: 0,
                              end: 0,
                              child: Center(
                                child: Text(
                                  '${record.carbohydrate.toStringAsFixed(2)}g / 200g',
                                  textAlign: TextAlign.center,
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
                          ],
                        ),
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.transparent,
                      width: converter.w(
                        16,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: BysonAspectRatio(
                        designWidth: 89,
                        designHeight: 81,
                        builder: (converter) => Stack(
                          children: [
                            PositionedDirectional(
                              top: 0,
                              height: converter.h(
                                24,
                              ),
                              start: 0,
                              end: 0,
                              child: Center(
                                child: Text(
                                  '단백질',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: converter.h(
                                      16,
                                    ),
                                    color: const Color(
                                      0xFF111111,
                                    ),
                                    fontWeight: FontWeightAlias.semiBold,
                                    letterSpacing: converter.lt(
                                      fontSize: 16,
                                      percent: -2,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            PositionedDirectional(
                              top: converter.h(
                                32,
                              ),
                              height: converter.h(
                                20,
                              ),
                              start: 0,
                              end: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    converter.radius(
                                      4,
                                    ),
                                  ),
                                  color: const Color(
                                    0xFFFFABAB,
                                  ),
                                ),
                              ),
                            ),
                            PositionedDirectional(
                              top: converter.h(
                                32,
                              ),
                              height: converter.h(
                                20,
                              ),
                              start: 0,
                              width: converter.realSize.width * (record.protein / 200),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    converter.radius(
                                      4,
                                    ),
                                  ),
                                  color: const Color(
                                    0xFFFF3F3F,
                                  ),
                                ),
                              ),
                            ),

                            PositionedDirectional(
                              bottom: 0,
                              height: converter.h(
                                24,
                              ),
                              start: 0,
                              end: 0,
                              child: Center(
                                child: Text(
                                  '${record.protein.toStringAsFixed(2)}g / 200g',
                                  textAlign: TextAlign.center,
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
                          ],
                        ),
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.transparent,
                      width: converter.w(
                        16,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: BysonAspectRatio(
                        designWidth: 89,
                        designHeight: 81,
                        builder: (converter) => Stack(
                          children: [
                            PositionedDirectional(
                              top: 0,
                              height: converter.h(
                                24,
                              ),
                              start: 0,
                              end: 0,
                              child: Center(
                                child: Text(
                                  '지방',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: converter.h(
                                      16,
                                    ),
                                    color: const Color(
                                      0xFF111111,
                                    ),
                                    fontWeight: FontWeightAlias.semiBold,
                                    letterSpacing: converter.lt(
                                      fontSize: 16,
                                      percent: -2,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            PositionedDirectional(
                              top: converter.h(
                                32,
                              ),
                              height: converter.h(
                                20,
                              ),
                              start: 0,
                              end: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    converter.radius(
                                      4,
                                    ),
                                  ),
                                  color: const Color(
                                    0xFFFFEBB3,
                                  ),
                                ),
                              ),
                            ),
                            PositionedDirectional(
                              top: converter.h(
                                32,
                              ),
                              height: converter.h(
                                20,
                              ),
                              start: 0,
                              width: converter.realSize.width * (record.fat / 200),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    converter.radius(
                                      4,
                                    ),
                                  ),
                                  color: const Color(
                                    0xFFFFD460,
                                  ),
                                ),
                              ),
                            ),

                            PositionedDirectional(
                              bottom: 0,
                              height: converter.h(
                                24,
                              ),
                              start: 0,
                              end: 0,
                              child: Center(
                                child: Text(
                                  '${record.fat.toStringAsFixed(2)}g / 200g',
                                  textAlign: TextAlign.center,
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // builder: (converter) => Row(
                //   children: [
                //     Container(
                //       width: converter.w(
                //         8,
                //       ),
                //       height: converter.h(
                //         8,
                //       ),
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.all(
                //           converter.radius(
                //             2,
                //           ),
                //         ),
                //         color: const Color(
                //           0xFF85ED6B,
                //         ),
                //       ),
                //     ),
                //     VerticalDivider(
                //       color: Colors.transparent,
                //       width: converter.w(
                //         4,
                //       ),
                //       thickness: 0,
                //     ),
                //     Text(
                //       '탄수화물',
                //       textAlign: TextAlign.start,
                //       style: TextStyle(
                //         // height: 1.5,
                //         fontSize: converter.h(
                //           14,
                //         ),
                //         color: const Color(
                //           0xFF888888,
                //         ),
                //         fontWeight: FontWeightAlias.medium,
                //         letterSpacing: converter.lt(
                //           fontSize: 14,
                //           percent: -2,
                //         ),
                //       ),
                //     ),
                //     VerticalDivider(
                //       color: Colors.transparent,
                //       width: converter.w(
                //         4,
                //       ),
                //       thickness: 0,
                //     ),
                //     Text(
                //       '50%',
                //       textAlign: TextAlign.start,
                //       style: TextStyle(
                //         // height: 1.5,
                //         fontSize: converter.h(
                //           14,
                //         ),
                //         color: const Color(
                //           0xFF111111,
                //         ),
                //         fontWeight: FontWeightAlias.semiBold,
                //         letterSpacing: converter.lt(
                //           fontSize: 14,
                //           percent: -2,
                //         ),
                //       ),
                //     ),
                //     VerticalDivider(
                //       color: Colors.transparent,
                //       width: converter.w(
                //         16,
                //       ),
                //       thickness: 0,
                //     ),
                //     Container(
                //       width: converter.w(
                //         8,
                //       ),
                //       height: converter.h(
                //         8,
                //       ),
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.all(
                //           converter.radius(
                //             2,
                //           ),
                //         ),
                //         color: const Color(
                //           0xFFFF6666,
                //         ),
                //       ),
                //     ),
                //     VerticalDivider(
                //       color: Colors.transparent,
                //       width: converter.w(
                //         4,
                //       ),
                //       thickness: 0,
                //     ),
                //     Text(
                //       '단백질',
                //       textAlign: TextAlign.start,
                //       style: TextStyle(
                //         // height: 1.5,
                //         fontSize: converter.h(
                //           14,
                //         ),
                //         color: const Color(
                //           0xFF888888,
                //         ),
                //         fontWeight: FontWeightAlias.medium,
                //         letterSpacing: converter.lt(
                //           fontSize: 14,
                //           percent: -2,
                //         ),
                //       ),
                //     ),
                //     VerticalDivider(
                //       color: Colors.transparent,
                //       width: converter.w(
                //         4,
                //       ),
                //       thickness: 0,
                //     ),
                //     Text(
                //       '50%',
                //       textAlign: TextAlign.start,
                //       style: TextStyle(
                //         // height: 1.5,
                //         fontSize: converter.h(
                //           14,
                //         ),
                //         color: const Color(
                //           0xFF111111,
                //         ),
                //         fontWeight: FontWeightAlias.semiBold,
                //         letterSpacing: converter.lt(
                //           fontSize: 14,
                //           percent: -2,
                //         ),
                //       ),
                //     ),
                //     VerticalDivider(
                //       color: Colors.transparent,
                //       width: converter.w(
                //         16,
                //       ),
                //       thickness: 0,
                //     ),
                //     Container(
                //       width: converter.w(
                //         8,
                //       ),
                //       height: converter.h(
                //         8,
                //       ),
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.all(
                //           converter.radius(
                //             2,
                //           ),
                //         ),
                //         color: const Color(
                //           0xFFFFD460,
                //         ),
                //       ),
                //     ),
                //     VerticalDivider(
                //       color: Colors.transparent,
                //       width: converter.w(
                //         4,
                //       ),
                //       thickness: 0,
                //     ),
                //     Text(
                //       '지방',
                //       textAlign: TextAlign.start,
                //       style: TextStyle(
                //         // height: 1.5,
                //         fontSize: converter.h(
                //           14,
                //         ),
                //         color: const Color(
                //           0xFF888888,
                //         ),
                //         fontWeight: FontWeightAlias.medium,
                //         letterSpacing: converter.lt(
                //           fontSize: 14,
                //           percent: -2,
                //         ),
                //       ),
                //     ),
                //     VerticalDivider(
                //       color: Colors.transparent,
                //       width: converter.w(
                //         4,
                //       ),
                //       thickness: 0,
                //     ),
                //     Text(
                //       '50%',
                //       textAlign: TextAlign.start,
                //       style: TextStyle(
                //         // height: 1.5,
                //         fontSize: converter.h(
                //           14,
                //         ),
                //         color: const Color(
                //           0xFF111111,
                //         ),
                //         fontWeight: FontWeightAlias.semiBold,
                //         letterSpacing: converter.lt(
                //           fontSize: 14,
                //           percent: -2,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // builder: (converter) => Stack(
                //   children: [
                //     PositionedDirectional(
                //       top: converter.h(
                //         16,
                //       ),
                //       start: 0,
                //       height: converter.h(
                //         27,
                //       ),
                //       child: Row(
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Text(
                //             '총 수행세트',
                //             textAlign: TextAlign.start,
                //             style: TextStyle(
                //               // height: 1.5,
                //               fontSize: converter.h(
                //                 14,
                //               ),
                //               color: const Color(
                //                 0xFF111111,
                //               ),
                //               fontWeight: FontWeightAlias.regular,
                //               letterSpacing: converter.lt(
                //                 fontSize: 14,
                //                 percent: -2,
                //               ),
                //             ),
                //           ),
                //           VerticalDivider(
                //             color: Colors.transparent,
                //             width: converter.w(
                //               4,
                //             ),
                //             thickness: 0,
                //           ),
                //           Text(
                //             '30세트',
                //             textAlign: TextAlign.start,
                //             style: TextStyle(
                //               // height: 1.5,
                //               fontSize: converter.h(
                //                 18,
                //               ),
                //               color: const Color(
                //                 0xFF111111,
                //               ),
                //               fontWeight: FontWeightAlias.semiBold,
                //               letterSpacing: converter.lt(
                //                 fontSize: 18,
                //                 percent: -2,
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //     PositionedDirectional(
                //       top: converter.h(
                //         47,
                //       ),
                //       start: 0,
                //       height: converter.h(
                //         27,
                //       ),
                //       child: Row(
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Text(
                //             '총 수행볼륨',
                //             textAlign: TextAlign.start,
                //             style: TextStyle(
                //               // height: 1.5,
                //               fontSize: converter.h(
                //                 14,
                //               ),
                //               color: const Color(
                //                 0xFF111111,
                //               ),
                //               fontWeight: FontWeightAlias.regular,
                //               letterSpacing: converter.lt(
                //                 fontSize: 14,
                //                 percent: -2,
                //               ),
                //             ),
                //           ),
                //           VerticalDivider(
                //             color: Colors.transparent,
                //             width: converter.w(
                //               4,
                //             ),
                //             thickness: 0,
                //           ),
                //           Text(
                //             '8,630kg',
                //             textAlign: TextAlign.start,
                //             style: TextStyle(
                //               // height: 1.5,
                //               fontSize: converter.h(
                //                 18,
                //               ),
                //               color: const Color(
                //                 0xFF111111,
                //               ),
                //               fontWeight: FontWeightAlias.semiBold,
                //               letterSpacing: converter.lt(
                //                 fontSize: 18,
                //                 percent: -2,
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
              ),
              // Wrap(
              //   spacing: App.instance.overlay.relativeScreenWidth(
              //     8,
              //   ),
              //   runSpacing: App.instance.overlay.relativeScreenHeight(
              //     8,
              //   ),
              //   children: records,
              // ),
            ],
          ),
        ),
      );
}
