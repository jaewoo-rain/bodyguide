import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/root/route/home/page/practice/page/analytics/practice_analytics_page.dart';
import 'package:app/root/route/home/page/practice/page/history/practice_history_page.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class PracticePage extends StatelessWidget {
  const PracticePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color(
          0xFFE5E5EC,
        ),
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
                  Center(
                    child: Text(
                      '운동관리',
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
                        letterSpacing: converter.lt(
                          fontSize: 20,
                          percent: -2,
                        ),
                      ),
                    ),
                  ),
                  PositionedDirectional(
                    top: 0,
                    end: converter.w(
                      60 - 8,
                    ),
                    bottom: 0,
                    width: converter.h(
                      8 + 24 + 8,
                    ),
                    child: BysonCupertinoButton.solid(
                      onPressed: () => App.instance.navigator.push(
                        Routes.notification.path,
                      ),
                      child: Center(
                        child: Icon(
                          IconsaxPlusLinear.notification,
                          color: const Color(
                            0xFF3D5DD3,
                          ),
                          size: converter.h(
                            24,
                          ),
                        ),
                      ),
                    ),
                  ),
                  PositionedDirectional(
                    top: 0,
                    end: converter.w(
                      12,
                    ),
                    bottom: 0,
                    width: converter.h(
                      8 + 24 + 8,
                    ),
                    child: BysonCupertinoButton.solid(
                      onPressed: () => App.instance.navigator.push(
                        Routes.calendar.path,
                      ),
                      child: Center(
                        child: Icon(
                          IconsaxPlusLinear.calendar,
                          color: const Color(
                            0xFF3D5DD3,
                          ),
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
          ),
        ),
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              BysonAspectRatio(
                designWidth: designWidth,
                designHeight: 56,
                decoration: (converter) =>
                    const BoxDecoration(color: Colors.white),
                builder: (converter) => TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: const Color(
                    0xFF3D5DD3,
                  ),
                  indicatorWeight: converter.h(
                    2,
                  ),
                  padding: EdgeInsets.zero,
                  labelPadding: EdgeInsets.zero,
                  indicatorPadding: EdgeInsets.zero,
                  labelColor: const Color(
                    0xFF111111,
                  ),
                  unselectedLabelColor: const Color(
                    0xFF111111,
                  ),
                  labelStyle: TextStyle(
                    height: 1.5,
                    fontSize: converter.h(
                      18,
                    ),
                    fontWeight: FontWeightAlias.semiBold,
                    letterSpacing: converter.lt(
                      fontSize: 18,
                      percent: -2,
                    ),
                  ),
                  unselectedLabelStyle: TextStyle(
                    height: 1.5,
                    fontSize: converter.h(
                      18,
                    ),
                    fontWeight: FontWeightAlias.semiBold,
                    letterSpacing: converter.lt(
                      fontSize: 18,
                      percent: -2,
                    ),
                  ),
                  tabs: [
                    Tab(
                      text: '나의 운동',
                      height: converter.realSize.height,
                    ),
                    Tab(
                      text: '운동 분석',
                      height: converter.realSize.height,
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    PracticeHistoryPage(),
                    PracticeAnalyticsPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
