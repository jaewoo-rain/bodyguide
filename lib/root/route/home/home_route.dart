import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/app/misc/extensions.dart';
import 'package:app/root/route/home/home_bloc.dart';
import 'package:app/root/route/home/page/example/sqlite_page.dart';
import 'package:app/root/route/home/page/idle/idle_bloc.dart';
import 'package:app/root/route/home/page/idle/idle_page.dart';
import 'package:app/root/route/home/page/my/my_bloc.dart';
import 'package:app/root/route/home/page/my/my_page.dart';
import 'package:app/root/route/home/page/nutrient/nutrient_page.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/practice_analytics_report_bloc.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/practice_analytics_report_route.dart';
import 'package:app/root/route/home/page/practice/page/history/practice_history_bloc.dart';
import 'package:app/root/route/home/page/practice/practice_page.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:byson_switcher/byson_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:preload_page_view/preload_page_view.dart';

import 'page/practice/page/analytics/practice_analytics_page.dart';
import 'page/practice/page/history/practice_history_page.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeBloc(),
          ),
          BlocProvider(
            create: (context) => IdleBloc()..add(const IdleEvent.loadState()),
          ),
          // BlocProvider(create: (context) => PracticeHistoryBloc()),
          // BlocProvider(
          //     create: (context) => MyBloc()..add(const MyEvent.mock())),
          BlocProvider(
              create: (context) => PracticeAnalyticsReportBloc()
                ..add(const PracticeAnalyticsReportEvent.initialize()))
        ],
        child: Builder(
          builder: (context) => Scaffold(
            backgroundColor: const Color(
              0xFFF1F1F5,
            ),
            body: PreloadPageView(
              controller: context.read<HomeBloc>().pageController,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              // HomeRoute 내의 PreloadPageView의 onPageChanged 콜백 수정 예시
              onPageChanged: (value) {
                final page = HomePage.values.elementAt(value);
                print('페이지: $page');
                context
                    .read<HomeBloc>()
                    .add(HomeEvent.onPageChanged(value: page));

                // 만약 PracticeHistory 탭이 전환되었다면, 해당 Bloc에 refresh 이벤트를 보냄
                if (page == HomePage.nutrient) {
                  context
                      .read<PracticeAnalyticsReportBloc>()
                      .add(const PracticeAnalyticsReportEvent.initialize());
                  print("운동탭 클릭됨");
                } //else if (page == HomePage.my) {
                //   context.read<MyBloc>().add(const MyEvent.mock());
                //   print("마이페이지탭 클릭됨");
                // } else if (page == HomePage.idle) {
                //   context.read<IdleBloc>().add(const IdleEvent.loadState());
                //   print("홈탭 클릭됨");
                // }
              },

              children: const [
                IdlePage(),
                PracticeHistoryPage(),
                MyPage(),
                PracticeAnalyticsReportRoute(),
                // NutrientPage(),
                // SQLitePage(),
              ],
            ),
            bottomNavigationBar: DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(
                  0xFFF9F9F9,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(
                      0.15,
                    ),
                    blurRadius: App.instance.overlay.relativeScreenWidth(
                      16,
                    ),
                    spreadRadius: 0,
                    offset: Offset.zero,
                  ),
                ],
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
              child: SafeArea(
                child: BysonAspectRatio.padding(
                  designWidth: designWidth,
                  designHeight: 52 + kToolbarHeightDiv3,
                  designPadding:
                      const EdgeInsets.only(bottom: kToolbarHeightDiv3),
                  builder: (converter) => BlocBuilder<HomeBloc, HomeState>(
                    buildWhen: (previous, current) =>
                        (previous.page != current.page),
                    builder: (context, state) => Flex(
                      direction: Axis.horizontal,
                      children: HomePage.values
                          .map(
                            (element) => Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: BysonCupertinoButton.solid(
                                onPressed: () => context
                                    .read<HomeBloc>()
                                    .pageController
                                    .animateToPage(
                                      element.index,
                                      duration: defaultAnimationDuration,
                                      curve: defaultAnimationCurve,
                                    ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    PositionedDirectional(
                                      top: converter.h(
                                        8,
                                      ),
                                      start: converter.w(
                                        35.5,
                                      ),
                                      width: converter.w(
                                        24,
                                      ),
                                      height: converter.h(
                                        24,
                                      ),
                                      child: BysonSwitcher(
                                        keys: () => state.page == element,
                                        builder: (value) => element.icon.svg(
                                          width: converter.w(
                                            24,
                                          ),
                                          height: converter.h(
                                            24,
                                          ),
                                          colorFilter: ColorFilter.mode(
                                            switch (value) {
                                              true => const Color(
                                                  0xFF3D5DD3,
                                                ),
                                              false => const Color(
                                                  0xFF111111,
                                                ),
                                            },
                                            BlendMode.srcIn,
                                          ),
                                        ),
                                      ),
                                    ),
                                    PositionedDirectional(
                                      bottom: 0,
                                      start: 0,
                                      end: 0,
                                      height: converter.h(
                                        17,
                                      ),
                                      child: Center(
                                        child: Text(
                                          element.label,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            height: 1.5,
                                            fontSize: converter.h(
                                              11,
                                            ),
                                            color: const Color(0xFF888888),
                                            fontWeight: FontWeightAlias.regular,
                                            letterSpacing: converter.w(
                                              -0.22,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
