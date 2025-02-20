import 'dart:math';

import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/constant/values.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_do/practice_do_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class NutrientAnalyticsReportDetailSheet extends StatelessWidget {
  static Future<void> show({
    required BuildContext context,
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
      builder: (context) => NutrientAnalyticsReportDetailSheet._(
      ),
    );
  }

  const NutrientAnalyticsReportDetailSheet._();

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
                '상세보기',
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
              top: 0,
              end: 0,
              bottom: 0,
              width: converter.h(
                72,
              ),
              child: BysonCupertinoButton.solid(
                onPressed: () => App.instance.navigator.pop(),
                child: Center(
                  child: Icon(
                    Icons.close,
                    color: Colors.black,
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
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: App.instance.overlay.relativeScreenWidth(
            20,
          ),
          vertical: App.instance.overlay.relativeScreenHeight(
            24,
          ),
        ),
        child: Assets.image.imgReport3.image(),
      ),
    ],
  );
}
