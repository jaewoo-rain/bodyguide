import 'dart:math';

import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/constant/values.dart';
import 'package:app/model/local/nutrient_record.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_do/practice_do_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class NutrientSummaryDetailSheet extends StatelessWidget {

  static Future<void> show({
    required BuildContext context,
    required NutrientRecord record,
  }) {

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
      builder: (context) => NutrientSummaryDetailSheet._(
        record: record,
      ),
    );
  }

  const NutrientSummaryDetailSheet._({
    required this.record,
  });

  final NutrientRecord record;

  @override
  Widget build(BuildContext context) => Column(
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
                '영양정보',
                textAlign: TextAlign.center,
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
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 24,
      ),
      BysonAspectRatio.padding(
        designWidth: designWidth,
        designHeight: 30,
        designPadding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        builder: (converter) => Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '총 열량',
                textAlign: TextAlign.start,
                style: TextStyle(
                  // height: 1.5,
                  fontSize: converter.h(
                    18,
                  ),
                  color: const Color(
                    0xFF111111,
                  ),
                  fontWeight: FontWeightAlias.regular,
                  letterSpacing: converter.lt(
                    fontSize: 18,
                    percent: -2,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${record.kcal.toStringAsFixed(1)}kcal',
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
            ),
          ],
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 1,
        decoration: BoxDecoration(
            color: Color(
              0xFFE5E5EC,
            )
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      BysonAspectRatio.padding(
        designWidth: designWidth,
        designHeight: 30,
        designPadding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        builder: (converter) => Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '탄수화물',
                textAlign: TextAlign.start,
                style: TextStyle(
                  // height: 1.5,
                  fontSize: converter.h(
                    18,
                  ),
                  color: const Color(
                    0xFF111111,
                  ),
                  fontWeight: FontWeightAlias.regular,
                  letterSpacing: converter.lt(
                    fontSize: 18,
                    percent: -2,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${record.carbohydrate.toStringAsFixed(1)}g',
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
            ),
          ],
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      BysonAspectRatio.padding(
        designWidth: designWidth,
        designHeight: 21,
        designPadding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        builder: (converter) => Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '당',
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
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${record.carbohydrateSugar.toStringAsFixed(1)}g',
                textAlign: TextAlign.start,
                style: TextStyle(
                  // height: 1.5,
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
          ],
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      BysonAspectRatio.padding(
        designWidth: designWidth,
        designHeight: 21,
        designPadding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        builder: (converter) => Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '식이섬유',
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
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${record.carbohydrateFiber.toStringAsFixed(1)}g',
                textAlign: TextAlign.start,
                style: TextStyle(
                  // height: 1.5,
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
          ],
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 1,
        decoration: BoxDecoration(
            color: Color(
              0xFFE5E5EC,
            )
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      BysonAspectRatio.padding(
        designWidth: designWidth,
        designHeight: 30,
        designPadding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        builder: (converter) => Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '단백질',
                textAlign: TextAlign.start,
                style: TextStyle(
                  // height: 1.5,
                  fontSize: converter.h(
                    18,
                  ),
                  color: const Color(
                    0xFF111111,
                  ),
                  fontWeight: FontWeightAlias.regular,
                  letterSpacing: converter.lt(
                    fontSize: 18,
                    percent: -2,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${record.protein.toStringAsFixed(1)}g',
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
            ),
          ],
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 1,
        decoration: BoxDecoration(
            color: Color(
              0xFFE5E5EC,
            )
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      BysonAspectRatio.padding(
        designWidth: designWidth,
        designHeight: 30,
        designPadding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        builder: (converter) => Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '지방',
                textAlign: TextAlign.start,
                style: TextStyle(
                  // height: 1.5,
                  fontSize: converter.h(
                    18,
                  ),
                  color: const Color(
                    0xFF111111,
                  ),
                  fontWeight: FontWeightAlias.regular,
                  letterSpacing: converter.lt(
                    fontSize: 18,
                    percent: -2,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${record.fat.toStringAsFixed(1)}g',
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
            ),
          ],
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      BysonAspectRatio.padding(
        designWidth: designWidth,
        designHeight: 21,
        designPadding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        builder: (converter) => Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '포화지방',
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
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${record.saturatedFat.toStringAsFixed(1)}g',
                textAlign: TextAlign.start,
                style: TextStyle(
                  // height: 1.5,
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
          ],
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      BysonAspectRatio.padding(
        designWidth: designWidth,
        designHeight: 21,
        designPadding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        builder: (converter) => Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '불포화지방',
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
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${record.unsaturatedFat.toStringAsFixed(1)}g',
                textAlign: TextAlign.start,
                style: TextStyle(
                  // height: 1.5,
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
          ],
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      BysonAspectRatio.padding(
        designWidth: designWidth,
        designHeight: 21,
        designPadding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        builder: (converter) => Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '트랜스지방',
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
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${record.transFat.toStringAsFixed(1)}g',
                textAlign: TextAlign.start,
                style: TextStyle(
                  // height: 1.5,
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
          ],
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 1,
        decoration: BoxDecoration(
            color: Color(
              0xFFE5E5EC,
            )
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      BysonAspectRatio.padding(
        designWidth: designWidth,
        designHeight: 30,
        designPadding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        builder: (converter) => Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '콜레스테롤',
                textAlign: TextAlign.start,
                style: TextStyle(
                  // height: 1.5,
                  fontSize: converter.h(
                    18,
                  ),
                  color: const Color(
                    0xFF111111,
                  ),
                  fontWeight: FontWeightAlias.regular,
                  letterSpacing: converter.lt(
                    fontSize: 18,
                    percent: -2,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${record.cholesterol.toStringAsFixed(0)}mg',
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
            ),
          ],
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 1,
        decoration: BoxDecoration(
            color: Color(
              0xFFE5E5EC,
            )
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      BysonAspectRatio.padding(
        designWidth: designWidth,
        designHeight: 30,
        designPadding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        builder: (converter) => Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '식이섬유',
                textAlign: TextAlign.start,
                style: TextStyle(
                  // height: 1.5,
                  fontSize: converter.h(
                    18,
                  ),
                  color: const Color(
                    0xFF111111,
                  ),
                  fontWeight: FontWeightAlias.regular,
                  letterSpacing: converter.lt(
                    fontSize: 18,
                    percent: -2,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${record.fiber.toStringAsFixed(1)}g',
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
            ),
          ],
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 1,
        decoration: BoxDecoration(
            color: Color(
              0xFFE5E5EC,
            )
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      BysonAspectRatio.padding(
        designWidth: designWidth,
        designHeight: 30,
        designPadding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        builder: (converter) => Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '나트륨',
                textAlign: TextAlign.start,
                style: TextStyle(
                  // height: 1.5,
                  fontSize: converter.h(
                    18,
                  ),
                  color: const Color(
                    0xFF111111,
                  ),
                  fontWeight: FontWeightAlias.regular,
                  letterSpacing: converter.lt(
                    fontSize: 18,
                    percent: -2,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${record.sodium.toStringAsFixed(1)}g',
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
            ),
          ],
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 1,
        decoration: BoxDecoration(
            color: Color(
              0xFFE5E5EC,
            )
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      BysonAspectRatio.padding(
        designWidth: designWidth,
        designHeight: 30,
        designPadding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        builder: (converter) => Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '칼륨',
                textAlign: TextAlign.start,
                style: TextStyle(
                  // height: 1.5,
                  fontSize: converter.h(
                    18,
                  ),
                  color: const Color(
                    0xFF111111,
                  ),
                  fontWeight: FontWeightAlias.regular,
                  letterSpacing: converter.lt(
                    fontSize: 18,
                    percent: -2,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${record.potassium.toStringAsFixed(1)}g',
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
            ),
          ],
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 1,
        decoration: BoxDecoration(
            color: Color(
              0xFFE5E5EC,
            )
        ),
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 8,
      ),
      const BysonSeparator(
        designWidth: designWidth,
        designHeight: 24,
      ),
    ],
  );
}
