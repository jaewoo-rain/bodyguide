import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/root/route/home/route/notification/notification_bloc.dart';
import 'package:app/root/route/home/route/notification/page/body_guide/body_guide_bloc.dart';
import 'package:app/root/route/home/route/notification/page/body_guide/body_guide_page.dart';
import 'package:app/root/route/home/route/notification/page/my_activity/my_activity_bloc.dart';
import 'package:app/root/route/home/route/notification/page/my_activity/my_activity_page.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class NotificationRoute extends StatelessWidget {
  const NotificationRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => NotificationBloc(),
          ),
          BlocProvider(
            create: (context) => MyActivityBloc(),
          ),
          BlocProvider(
            create: (context) => BodyGuideBloc(),
          ),
        ],
        child: Builder(
          builder: (context) => DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                surfaceTintColor: Colors.white,
                automaticallyImplyLeading: false,
                scrolledUnderElevation: 0,
                elevation: 0,
                systemOverlayStyle: systemUiOverlayStyleDark,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(
                    App.instance.overlay.relativeScreenHeight(
                      56,
                    ),
                  ),
                  child: BysonAspectRatio(
                    designWidth: designWidth,
                    designHeight: 56,
                    builder: (converter) => TabBar(
                      padding: EdgeInsets.zero,
                      labelPadding: EdgeInsets.zero,
                      indicatorPadding: EdgeInsets.zero,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorColor: const Color(
                        0xFF3D5DD3,
                      ),
                      indicatorWeight: converter.h(
                        2,
                      ),
                      tabs: [
                        Tab(
                          height: converter.realSize.height,
                          child: Text(
                            '나의 활동',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.5,
                              fontSize: converter.h(
                                18,
                              ),
                              color: Colors.black,
                              fontWeight: FontWeightAlias.semiBold,
                              letterSpacing: converter.w(
                                -0.36,
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          height: converter.realSize.height,
                          child: Text(
                            '바디가이드',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.5,
                              fontSize: converter.h(
                                18,
                              ),
                              color: Colors.black,
                              fontWeight: FontWeightAlias.semiBold,
                              letterSpacing: converter.w(
                                -0.36,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
                            '알림',
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
              body: const TabBarView(
                children: [
                  MyActivityPage(),
                  BodyGuidePage(),
                ],
              ),
            ),
          ),
        ),
      );
}
