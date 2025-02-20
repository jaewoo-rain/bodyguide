import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_do/practice_do_bloc.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_edit/practice_edit_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:byson_switcher/byson_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:intl/intl.dart';

class ThreePracticeRoute extends StatelessWidget {
  const ThreePracticeRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
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
                      '나의 3대 중량',
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
        body: ListView(
          children: [
            const BysonSeparator(
              designWidth: designWidth,
              designHeight: 32,
            ),
            BysonAspectRatio.padding(
              designWidth: designWidth,
              designHeight: 107,
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
                      24,
                    ),
                    start: converter.w(
                      20,
                    ),
                    height: converter.h(
                      21,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '나의 3대 운동 중량',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          height: 1.5,
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
                  ),
                  PositionedDirectional(
                    bottom: converter.h(
                      24,
                    ),
                    start: converter.w(
                      16,
                    ),
                    height: converter.h(
                      34,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '640kg',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          height: 1.2,
                          fontSize: converter.h(
                            28,
                          ),
                          color: const Color(
                            0xFF344BC1,
                          ),
                          fontWeight: FontWeightAlias.semiBold,
                          letterSpacing: converter.lt(
                            fontSize: 28,
                            percent: -2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  PositionedDirectional(
                    bottom: converter.h(
                      24,
                    ),
                    end: converter.w(
                      20,
                    ),
                    height: converter.h(
                      18,
                    ),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '최근 업데이트 ${DateFormat('yy.MM.dd').format(DateTime.now())}',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          height: 1.5,
                          fontSize: converter.h(
                            12,
                          ),
                          color: const Color(
                            0xFF5D5D5D,
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
                ],
              ),
            ),
            const BysonSeparator(
              designWidth: designWidth,
              designHeight: 8,
            ),
            BysonAspectRatio.padding(
              designWidth: designWidth,
              designHeight: 92,
              designPadding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              builder: (converter) => BysonCupertinoButton.outlinedSolid(
                onPressed: null,
                borderRadius: BorderRadius.all(
                  converter.radius(
                    12,
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
                color: Colors.white,
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
                        21.5,
                      ),
                      start: converter.w(
                        92,
                      ),
                      end: converter.w(
                        16,
                      ),
                      height: converter.h(
                        27,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '스쿼트',
                            textAlign: TextAlign.center,
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
                                  '하체 운동',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    // height: 1.5,
                                    fontSize: converter.h(
                                      12,
                                    ),
                                    color: const Color(
                                      0xFF3D5DD3,
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
                        ],
                      ),
                    ),
                    PositionedDirectional(
                      bottom: converter.h(
                        21.5,
                      ),
                      start: converter.w(
                        92,
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
                          fontWeight: FontWeightAlias.regular,
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
            ),
            const BysonSeparator(
              designWidth: designWidth,
              designHeight: 8,
            ),
            BysonAspectRatio.padding(
              designWidth: designWidth,
              designHeight: 92,
              designPadding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              builder: (converter) => BysonCupertinoButton.outlinedSolid(
                onPressed: null,
                borderRadius: BorderRadius.all(
                  converter.radius(
                    12,
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
                color: Colors.white,
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
                        21.5,
                      ),
                      start: converter.w(
                        92,
                      ),
                      end: converter.w(
                        16,
                      ),
                      height: converter.h(
                        27,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '데드리프트',
                            textAlign: TextAlign.center,
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
                                  '등 운동',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    // height: 1.5,
                                    fontSize: converter.h(
                                      12,
                                    ),
                                    color: const Color(
                                      0xFF3D5DD3,
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
                        ],
                      ),
                    ),
                    PositionedDirectional(
                      bottom: converter.h(
                        21.5,
                      ),
                      start: converter.w(
                        92,
                      ),
                      height: converter.h(
                        18,
                      ),
                      child: Text(
                        '이전 최고 수행 무게 240kg 1회',
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
                  ],
                ),
              ),
            ),
            const BysonSeparator(
              designWidth: designWidth,
              designHeight: 8,
            ),
            BysonAspectRatio.padding(
              designWidth: designWidth,
              designHeight: 92,
              designPadding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              builder: (converter) => BysonCupertinoButton.outlinedSolid(
                onPressed: null,
                borderRadius: BorderRadius.all(
                  converter.radius(
                    12,
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
                color: Colors.white,
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
                        21.5,
                      ),
                      start: converter.w(
                        92,
                      ),
                      end: converter.w(
                        16,
                      ),
                      height: converter.h(
                        27,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '벤치프레스',
                            textAlign: TextAlign.center,
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
                                  '가슴 운동',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    // height: 1.5,
                                    fontSize: converter.h(
                                      12,
                                    ),
                                    color: const Color(
                                      0xFF3D5DD3,
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
                        ],
                      ),
                    ),
                    PositionedDirectional(
                      bottom: converter.h(
                        21.5,
                      ),
                      start: converter.w(
                        92,
                      ),
                      height: converter.h(
                        18,
                      ),
                      child: Text(
                        '이전 최고 수행 무게 160kg 1회',
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
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
