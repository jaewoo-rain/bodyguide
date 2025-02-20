import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class NutrientAnalyticsChoiceRoute extends StatelessWidget {
  const NutrientAnalyticsChoiceRoute({
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
                  '영양분석 리포트',
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
          designHeight: 64,
        ),
        BysonAspectRatio(
          designWidth: designWidth,
          designHeight: 84,
          builder: (converter) => Stack(
            children: [
              PositionedDirectional(
                top: 0,
                start: converter.w(
                  20,
                ),
                height: converter.h(
                  26,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '이전 정보가 존재합니다.',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      height: 1.2,
                      fontSize: converter.h(
                        22,
                      ),
                      color: const Color(
                        0xFF111111,
                      ),
                      fontWeight: FontWeightAlias.semiBold,
                      letterSpacing: converter.lt(
                        fontSize: 22,
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
                  42,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '입력된 정보로 영양 정보를 분석해드려요!\n수집된 정보는 외부에 공개되지 않아요.',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      height: 1.5,
                      fontSize: converter.h(
                        14,
                      ),
                      color: const Color(
                        0xFF888888,
                      ),
                      fontWeight: FontWeightAlias.regular,
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
          designHeight: 69,
        ),
        Expanded(
          child: ListView(
            children: [
              BysonAspectRatio.padding(
                designWidth: designWidth,
                designHeight: 81,
                designPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                builder: (converter) =>
                    BysonCupertinoButton.outlinedSolid(
                      onPressed: () => App.instance.navigator.pop(
                        true,
                      ),
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
                      child: Stack(
                        children: [
                          PositionedDirectional(
                            top: converter.h(
                              16,
                            ),
                            start: converter.w(
                              16,
                            ),
                            height: converter.h(
                              27,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '영양정보 재입력',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: converter.h(
                                    18,
                                  ),
                                  color: const Color(
                                    0xFF111111,
                                  ),
                                  fontWeight:
                                  FontWeightAlias.semiBold,
                                  letterSpacing: converter.lt(
                                    fontSize: 18,
                                    percent: -2,
                                  ),
                                ),
                              ),
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
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '새로운 정보로 분석 받기',
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
                designHeight: 81,
                designPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                builder: (converter) =>
                    BysonCupertinoButton.outlinedSolid(
                      onPressed: () => App.instance.navigator.pop(
                        false,
                      ),
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
                      child: Stack(
                        children: [
                          PositionedDirectional(
                            top: converter.h(
                              16,
                            ),
                            start: converter.w(
                              16,
                            ),
                            height: converter.h(
                              27,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '기존 영양정보 사용',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: converter.h(
                                    18,
                                  ),
                                  color: const Color(
                                    0xFF111111,
                                  ),
                                  fontWeight:
                                  FontWeightAlias.semiBold,
                                  letterSpacing: converter.lt(
                                    fontSize: 18,
                                    percent: -2,
                                  ),
                                ),
                              ),
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
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '기존 정보로 분석 받기',
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
                        ],
                      ),
                    ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
