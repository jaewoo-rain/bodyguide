import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/root/route/sign/page/login/login_page.dart';
import 'package:app/root/route/sign/sign_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SignRoute extends StatelessWidget {
  const SignRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => SignBloc()
          ..add(
            SignEvent.initialize(
              context: context,
            ),
          ),
        child: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(
              toolbarHeight: App.instance.overlay.relativeScreenHeight(
                0,
              ),
              backgroundColor: Colors.white.withOpacity(
                0,
              ),
              surfaceTintColor: Colors.white.withOpacity(
                0,
              ),
              automaticallyImplyLeading: false,
              scrolledUnderElevation: 0,
              elevation: 0,
              systemOverlayStyle: systemUiOverlayStyleDark,
            ),
            backgroundColor: const Color(
              0xFFF1F1F5,
            ),
            body: PageView(
              controller: context.read<SignBloc>().outerPageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildSplash(
                  context: context,
                ),
                loginPage(context: context)
              ],
            ),
          ),
        ),
      );

  Widget _buildSplashPage({
    required BuildContext context,
    required BysonConverter converter,
    required String title,
    required String subTitle,
  }) =>
      Stack(
        children: [
          PositionedDirectional(
            top: 0,
            start: converter.hcx(
              200,
            ),
            width: converter.w(
              200,
            ),
            height: converter.h(
              200,
            ),
            child: Container(
              color: const Color(
                0xFFD9D9D9,
              ),
            ),
          ),
          PositionedDirectional(
            bottom: converter.h(
              71,
            ),
            start: 0,
            end: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.2,
                  fontSize: converter.h(
                    28,
                  ),
                  color: const Color(
                    0xFF111111,
                  ),
                  fontWeight: FontWeightAlias.semiBold,
                  letterSpacing: converter.w(
                    -0.56,
                  ),
                ),
              ),
            ),
          ),
          PositionedDirectional(
            bottom: 0,
            start: 0,
            end: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                subTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.5,
                  fontSize: converter.h(
                    14,
                  ),
                  color: const Color(
                    0xFF888888,
                  ),
                  fontWeight: FontWeightAlias.regular,
                  letterSpacing: converter.w(
                    -0.28,
                  ),
                ),
              ),
            ),
          ),
        ],
      );

  Widget _buildSplash({
    required BuildContext context,
  }) =>
      Scaffold(
        body: Center(
          child: BysonAspectRatio(
            designWidth: designWidth,
            designHeight: 474,
            builder: (converter) => Stack(
              children: [
                PositionedDirectional(
                  top: 0,
                  start: 0,
                  end: 0,
                  bottom: converter.h(
                    48,
                  ),
                  child: PageView(
                    controller: context.read<SignBloc>().splashPageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      _buildSplashPage(
                        context: context,
                        converter: converter,
                        title: '나에게 맞는 제품을\n추천받아보세요',
                        subTitle:
                            '바디가이드에서는\n검증된 통계자료를 학습한 AI 기술로\n나에게 맞는 제품을 추천드립니다.',
                      ),
                      _buildSplashPage(
                        context: context,
                        converter: converter,
                        title: '섭취하는 영양제\n성분의 주의사항에\n대해 알아보세요.',
                        subTitle:
                            '바디가이드에서는\n섭취하는 영양제의 성분과\n주의사항에 대한 정보를 제공합니다.',
                      ),
                      _buildSplashPage(
                        context: context,
                        converter: converter,
                        title: '운동 기록부터\n섭취 기록까지\n피트니스의 모든 것',
                        subTitle:
                            '바디가이드에서는\n운동 기록부터 섭취 기록까지\n건강 관리에 대한 서비스를 제공합니다.',
                      ),
                    ],
                  ),
                ),
                PositionedDirectional(
                  bottom: 0,
                  height: converter.h(
                    8,
                  ),
                  start: 0,
                  end: 0,
                  child: Center(
                    child: SmoothPageIndicator(
                      controller: context.read<SignBloc>().splashPageController,
                      count: 3,
                      axisDirection: Axis.horizontal,
                      effect: WormEffect(
                        dotWidth: converter.h(
                          8,
                        ),
                        dotHeight: converter.h(
                          8,
                        ),
                        spacing: converter.w(
                          16,
                        ),
                        dotColor: const Color(
                          0xFFE5E5EC,
                        ),
                        activeDotColor: const Color(
                          0xFF303F9F,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: const Color(
          0xFFF1F1F5,
        ),
        bottomNavigationBar: SafeArea(
          child: BysonAspectRatio.padding(
            designWidth: designWidth,
            designHeight: 60 + 16,
            designPadding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 16,
            ),
            builder: (converter) => BysonCupertinoButton.solid(
              key: key,
              onPressed: () {
                if (context.read<SignBloc>().splashPageController.hasClients) {
                  final double? page =
                      context.read<SignBloc>().splashPageController.page;
                  if (page != null) {
                    if (page < 1.5) {
                      context.read<SignBloc>().splashPageController.nextPage(
                            duration: defaultAnimationDuration,
                            curve: defaultAnimationCurve,
                          );
                    } else {
                      context.read<SignBloc>().outerPageController.nextPage(
                            duration: defaultAnimationDuration,
                            curve: defaultAnimationCurve,
                          );
                    }
                  }
                }
              },
              color: const Color(
                0xFF303F9F,
              ),
              borderRadius: BorderRadius.all(
                converter.radius(
                  12,
                ),
              ),
              child: Center(
                child: Text(
                  '다음',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    // height: 1.5,
                    fontSize: converter.h(
                      18,
                    ),
                    color: Colors.white,
                    fontWeight: FontWeightAlias.regular,
                    letterSpacing: converter.w(
                      -0.36,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
