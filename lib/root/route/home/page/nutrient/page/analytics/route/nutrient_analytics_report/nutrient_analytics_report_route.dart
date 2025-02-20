import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/root/route/home/page/nutrient/page/analytics/route/nutrient_analytics_report/modal/nutrient_analytics_report_detail_sheet.dart';
import 'package:app/root/route/home/page/nutrient/page/analytics/route/nutrient_analytics_report/nutrient_analytics_report_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:url_launcher/url_launcher_string.dart';

class NutrientAnalyticsReportRoute extends StatelessWidget {
  const NutrientAnalyticsReportRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => NutrientAnalyticsReportBloc()..add(
          const NutrientAnalyticsReportEvent.initialize(),
        ),
        child: Builder(
          builder: (context) => Scaffold(
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
            body: PageView(
              controller: context.read<NutrientAnalyticsReportBloc>().pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Center(
                  child: BysonAspectRatio(
                    designWidth: designWidth,
                    designHeight: 190,
                    builder: (converter) => Stack(
                      children: [
                        PositionedDirectional(
                          top: 0,
                          start: converter.hcx(
                            100,
                          ),
                          width: converter.w(
                            100,
                          ),
                          height: converter.h(
                            100,
                          ),
                          child: CircularProgressIndicator(
                            strokeWidth: converter.h(
                              8,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            '섭취 정보를\n분석하고 있습니다.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.2,
                              fontSize: converter.h(
                                24,
                              ),
                              color: const Color(
                                0xFF5D5D5D,
                              ),
                              fontWeight: FontWeightAlias.semiBold,
                              letterSpacing: converter.lt(
                                fontSize: 24,
                                percent: -2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Scaffold(
                  backgroundColor: Colors.transparent,
                  body: Center(
                    child: BysonAspectRatio(
                      designWidth: designWidth,
                      designHeight: 190,
                      builder: (converter) => Stack(
                        children: [
                          PositionedDirectional(
                            top: 0,
                            start: converter.hcx(
                              100,
                            ),
                            width: converter.w(
                              100,
                            ),
                            height: converter.h(
                              100,
                            ),
                            child: Assets.image.imgAnalyticsDone.image(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              width: converter.w(
                                100,
                              ),
                              height: converter.h(
                                100,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              '섭취 정보를\n분석하고 있습니다.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                height: 1.2,
                                fontSize: converter.h(
                                  24,
                                ),
                                color: const Color(
                                  0xFF5D5D5D,
                                ),
                                fontWeight: FontWeightAlias.semiBold,
                                letterSpacing: converter.lt(
                                  fontSize: 24,
                                  percent: -2,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  bottomNavigationBar: SafeArea(
                    child: BysonAspectRatio.padding(
                      designWidth: designWidth,
                      designHeight: 16 + 60 + 16,
                      designPadding: const EdgeInsets.only(
                        top: 16,
                        left: 20,
                        right: 20,
                        bottom: 16,
                      ),
                      builder: (converter) => BysonCupertinoButton.solid(
                        onPressed: () => context
                            .read<NutrientAnalyticsReportBloc>()
                            .pageController
                            .nextPage(
                              duration: defaultAnimationDuration,
                              curve: defaultAnimationCurve,
                            ),
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
                            '분석결과 보러가기',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              // height: 1.5,
                              fontSize: converter.h(
                                18,
                              ),
                              color: Colors.white,
                              fontWeight: FontWeightAlias.regular,
                              letterSpacing: converter.lt(
                                fontSize: 18,
                                percent: -2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Scaffold(
                  backgroundColor: Colors.transparent,
                  body: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                      horizontal: App.instance.overlay.relativeScreenWidth(
                        20,
                      ),
                      vertical: App.instance.overlay.relativeScreenHeight(
                        24,
                      ),
                    ),
                    child: Column(
                      children: [
                        BysonAspectRatio(
                          designWidth: 335,
                          designHeight: 235,
                          builder: (converter) => Stack(
                            children: [
                              Assets.image.nutrientReport0.image(
                                width: converter.w(
                                  335,
                                ),
                                height: converter.h(
                                  235,
                                ),
                              ),
                              PositionedDirectional(
                                top: converter.h(
                                  24,
                                ),
                                end: converter.w(
                                  20,
                                ),
                                height: converter.h(
                                  18,
                                ),
                                child: BysonCupertinoButton.solid(
                                  onPressed: () => NutrientAnalyticsReportDetailSheet.show(
                                    context: context,
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
                          designWidth: 335,
                          designHeight: 8,
                        ),
                        Assets.image.nutrientReport1.image(
                          width: App.instance.overlay.relativeScreenWidth(
                            335,
                          ),
                          fit: BoxFit.fitWidth,
                        ),
                        const BysonSeparator(
                          designWidth: 335,
                          designHeight: 8,
                        ),
                        Assets.image.imgReport2.image(
                          width: App.instance.overlay.relativeScreenWidth(
                            335,
                          ),
                          fit: BoxFit.fitWidth,
                        ),
                      ],
                    ),
                  ),
                  bottomNavigationBar: SafeArea(
                    child: BysonAspectRatio.padding(
                      designWidth: designWidth,
                      designHeight: 16 + 60 + 16,
                      designPadding: const EdgeInsets.only(
                        top: 16,
                        left: 20,
                        right: 20,
                        bottom: 16,
                      ),
                      builder: (converter) => BysonCupertinoButton.solid(
                        onPressed: () => context
                            .read<NutrientAnalyticsReportBloc>()
                            .pageController
                            .nextPage(
                          duration: defaultAnimationDuration,
                          curve: defaultAnimationCurve,
                        ),
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
                              letterSpacing: converter.lt(
                                fontSize: 18,
                                percent: -2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Scaffold(
                  backgroundColor: Colors.transparent,
                  body: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                      horizontal: App.instance.overlay.relativeScreenWidth(
                        20,
                      ),
                      vertical: App.instance.overlay.relativeScreenHeight(
                        32,
                      ),
                    ),
                    child: Column(
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: const Color(
                                0xFFE5E5EC,
                              ),
                              width: App.instance.overlay.relativeScreenWidth(
                                1,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(
                              App.instance.overlay.relativeScreenWidth(
                                8,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                              App.instance.overlay.relativeScreenWidth(
                                20,
                              ),
                              vertical:
                              App.instance.overlay.relativeScreenHeight(
                                24,
                              ),
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '영양분석 리포트',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        14,
                                      ),
                                      color: const Color(
                                        0xFF5D5D5D,
                                      ),
                                      fontWeight: FontWeightAlias.medium,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '식사 시기와 형태',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        20,
                                      ),
                                      color: const Color(
                                        0xFF344BC1,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                  App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '이윤구님께 추천드리는 식사 간격은 3시간이며 총 4끼로 구성합니다. ',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        12,
                                      ),
                                      color: const Color(
                                        0xFF888888,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                  App.instance.overlay.relativeScreenHeight(
                                    16,
                                  ),
                                  thickness: 0,
                                ),
                                _buildExpansionTile(
                                  context: context,
                                  title: '단백질 끼니 당 영양소 비율',
                                  initiallyExpanded: true,
                                  options: [
                                    '탄수화물: 약 69g',
                                    '단백질: 약 41g',
                                    '지방: 약 16g',
                                  ],
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height: App.instance.overlay.relativeScreenHeight(
                                    16,
                                  ),
                                  thickness: 0,
                                ),
                                _buildExpansionTile(
                                  context: context,
                                  title: '식사 간격과 섭취 가이드',
                                  initiallyExpanded: true,
                                  description: '설정된 기상 예정 시간은 07:00이며 취침 예정 시간은 23:00입니다.',
                                  options: [
                                    '식사 시간 1 : 08:00',
                                    '식사 시간 2 : 12:00',
                                    '식사 시간 3 : 16:00',
                                    '식사 시간 4 : 20:00',
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const BysonSeparator(
                          designWidth: 335,
                          designHeight: 8,
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: const Color(
                                0xFFE5E5EC,
                              ),
                              width: App.instance.overlay.relativeScreenWidth(
                                1,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(
                              App.instance.overlay.relativeScreenWidth(
                                8,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                              App.instance.overlay.relativeScreenWidth(
                                20,
                              ),
                              vertical:
                              App.instance.overlay.relativeScreenHeight(
                                24,
                              ),
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '추천드리는 급원',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        20,
                                      ),
                                      color: const Color(
                                        0xFF344BC1,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                  App.instance.overlay.relativeScreenHeight(
                                    16,
                                  ),
                                  thickness: 0,
                                ),
                                _buildExpansionTile(
                                  context: context,
                                  title: '탄수화물',
                                  initiallyExpanded: true,
                                  options: [
                                    '햇반 현미밥(100g 당 약 43g 함유)',
                                    '찐고구마(100g 당 약 30g 함유)',
                                    '오트밀(100g 당 약 11g 함유)',
                                    '바나나(1개 당 약 27g 함유)',
                                  ],
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height: App.instance.overlay.relativeScreenHeight(
                                    16,
                                  ),
                                  thickness: 0,
                                ),
                                _buildExpansionTile(
                                  context: context,
                                  title: '단백질',
                                  initiallyExpanded: true,
                                  options: [
                                    '닭가슴살(100g 당 약 23g 함유)',
                                    '돼지고기 뒷다리살(100g당 약 20g 함유)',
                                    '소고기 사태살(100당 약 20g 함유)',
                                    '고등어(100g 당 약 17g 함유)',
                                  ],
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height: App.instance.overlay.relativeScreenHeight(
                                    16,
                                  ),
                                  thickness: 0,
                                ),
                                _buildExpansionTile(
                                  context: context,
                                  title: '지방',
                                  initiallyExpanded: true,
                                  options: [
                                    '삶은 계란(100g 당 약 6g 함유)',
                                    '호두(100g 당 약 65g 함유)',
                                    '아보카도(100g 당 약 14g 함유)',
                                    '캐슈넛(100g 당 약 43g 함유)',
                                  ],
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height: App.instance.overlay.relativeScreenHeight(
                                    16,
                                  ),
                                  thickness: 0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  bottomNavigationBar: SafeArea(
                    child: BysonAspectRatio.padding(
                      designWidth: designWidth,
                      designHeight: 16 + 60 + 16,
                      designPadding: const EdgeInsets.only(
                        top: 16,
                        left: 20,
                        right: 20,
                        bottom: 16,
                      ),
                      builder: (converter) => BysonCupertinoButton.solid(
                        onPressed: () => context
                            .read<NutrientAnalyticsReportBloc>()
                            .pageController
                            .nextPage(
                          duration: defaultAnimationDuration,
                          curve: defaultAnimationCurve,
                        ),
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
                              letterSpacing: converter.lt(
                                fontSize: 18,
                                percent: -2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Scaffold(
                  backgroundColor: Colors.transparent,
                  body: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                      horizontal: App.instance.overlay.relativeScreenWidth(
                        20,
                      ),
                      vertical: App.instance.overlay.relativeScreenHeight(
                        32,
                      ),
                    ),
                    child: Column(
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: const Color(
                                0xFFE5E5EC,
                              ),
                              width: App.instance.overlay.relativeScreenWidth(
                                1,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(
                              App.instance.overlay.relativeScreenWidth(
                                8,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                              App.instance.overlay.relativeScreenWidth(
                                20,
                              ),
                              vertical:
                              App.instance.overlay.relativeScreenHeight(
                                24,
                              ),
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '탄수화물 제품 추천',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        20,
                                      ),
                                      color: const Color(
                                        0xFF344BC1,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                  App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '이윤구님의 운동 수준에 적합한 탄수화물 제품을 추천드립니다.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        12,
                                      ),
                                      color: const Color(
                                        0xFF888888,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                  App.instance.overlay.relativeScreenHeight(
                                    24,
                                  ),
                                  thickness: 0,
                                ),
                                GridView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: App.instance.overlay
                                        .relativeScreenHeight(
                                      24,
                                    ),
                                    crossAxisSpacing: App.instance.overlay
                                        .relativeScreenWidth(
                                      16,
                                    ),
                                    childAspectRatio: 140 / 270,
                                  ),
                                  itemCount: 4,
                                  itemBuilder: (context, index) =>
                                      BysonAspectRatio(
                                        designWidth: 140,
                                        designHeight: 270,
                                        builder: (converter) {

                                          final String title;
                                          final String price;
                                          final String subTitle;
                                          final AssetGenImage assetGenImage;

                                          switch (index) {
                                            case 0:
                                              title = '신성에프엔비';
                                              price = '23,900원';
                                              subTitle = '해맑음 바로먹는 순수고구마, 130g, 10개';
                                              assetGenImage = Assets.image.imgProduct0;
                                              break;

                                            case 1:
                                              title = '햇반';
                                              price = '19,660원';
                                              subTitle = '햇반 100% 현미로 지은 밥, 130g, 24개';
                                              assetGenImage = Assets.image.imgProduct1;
                                              break;

                                            default:
                                              title = 'BSN';
                                              price = '75,150원';
                                              subTitle = '신타-6 프로틴 파우더 드링크 믹스 단백질 보충제 초콜릿 밀크셰이크, 2.27kg, 1개';
                                              assetGenImage = Assets.image.imgProduct;
                                              break;
                                          }

                                          return BysonCupertinoButton.solid(
                                            onPressed: () => launchUrlString(
                                              'https://www.coupang.com/vp/products/8203767283?itemId=17461238041&vendorItemId=3180840758&q=프로틴&itemsCount=36&searchId=08e6407f6c3c4e40a8af0939ba39737c&rank=1&searchRank=1&isAddedCart=',
                                            ),
                                            child: Stack(
                                              children: [
                                                PositionedDirectional(
                                                  top: 0,
                                                  start: 0,
                                                  end: 0,
                                                  height: converter.h(
                                                    140,
                                                  ),
                                                  child: PhysicalModel(
                                                    color: const Color(0xFF000000)
                                                        .withOpacity(
                                                      0.05,
                                                    ),
                                                    child:
                                                    assetGenImage.image(
                                                      alignment: Alignment.center,
                                                      fit: BoxFit.contain,
                                                      width: converter.w(
                                                        140,
                                                      ),
                                                      height: converter.h(
                                                        140,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                PositionedDirectional(
                                                  top: converter.h(
                                                    148,
                                                  ),
                                                  start: 0,
                                                  end: 0,
                                                  height: converter.h(
                                                    18,
                                                  ),
                                                  child: Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Text(
                                                      title,
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                        height: 1.5,
                                                        fontSize: App.instance.overlay
                                                            .relativeScreenHeight(
                                                          12,
                                                        ),
                                                        color: const Color(
                                                          0xFF111111,
                                                        ),
                                                        fontWeight:
                                                        FontWeightAlias.medium,
                                                        letterSpacing: converter.lt(
                                                          fontSize: 12,
                                                          percent: -2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                PositionedDirectional(
                                                  top: converter.h(
                                                    166,
                                                  ),
                                                  start: 0,
                                                  end: 0,
                                                  child: Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Text(
                                                      subTitle,
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                        height: 1.5,
                                                        fontSize: App.instance.overlay
                                                            .relativeScreenHeight(
                                                          12,
                                                        ),
                                                        color: const Color(
                                                          0xFF888888,
                                                        ),
                                                        fontWeight:
                                                        FontWeightAlias.regular,
                                                        letterSpacing: converter.lt(
                                                          fontSize: 12,
                                                          percent: -2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                PositionedDirectional(
                                                  bottom: converter.h(
                                                    25,
                                                  ),
                                                  start: 0,
                                                  end: 0,
                                                  height: converter.h(
                                                    21,
                                                  ),
                                                  child: Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Text(
                                                      price,
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                        height: 1.5,
                                                        fontSize: App.instance.overlay
                                                            .relativeScreenHeight(
                                                          14,
                                                        ),
                                                        color: const Color(
                                                          0xFF111111,
                                                        ),
                                                        fontWeight:
                                                        FontWeightAlias.medium,
                                                        letterSpacing: converter.lt(
                                                          fontSize: 14,
                                                          percent: -2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                PositionedDirectional(
                                                  bottom: 0,
                                                  start: 0,
                                                  end: 0,
                                                  height: converter.h(
                                                    21,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      DecoratedBox(
                                                        decoration:
                                                        const BoxDecoration(
                                                          color: Color(
                                                            0xFFF1F5FD,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsets.symmetric(
                                                            horizontal: converter.w(
                                                              4,
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              '#로켓직구',
                                                              textAlign:
                                                              TextAlign.start,
                                                              style: TextStyle(
                                                                height: 1.5,
                                                                fontSize: App
                                                                    .instance.overlay
                                                                    .relativeScreenHeight(
                                                                  11,
                                                                ),
                                                                color: const Color(
                                                                  0xFF111111,
                                                                ),
                                                                fontWeight:
                                                                FontWeightAlias
                                                                    .regular,
                                                                letterSpacing:
                                                                converter.lt(
                                                                  fontSize: 11,
                                                                  percent: -2,
                                                                ),
                                                              ),
                                                            ),
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
                                                      DecoratedBox(
                                                        decoration:
                                                        const BoxDecoration(
                                                          color: Color(
                                                            0xFFF1F5FD,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsets.symmetric(
                                                            horizontal: converter.w(
                                                              4,
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              '#프로틴',
                                                              textAlign:
                                                              TextAlign.start,
                                                              style: TextStyle(
                                                                height: 1.5,
                                                                fontSize: App
                                                                    .instance.overlay
                                                                    .relativeScreenHeight(
                                                                  11,
                                                                ),
                                                                color: const Color(
                                                                  0xFF111111,
                                                                ),
                                                                fontWeight:
                                                                FontWeightAlias
                                                                    .regular,
                                                                letterSpacing:
                                                                converter.lt(
                                                                  fontSize: 11,
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
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const BysonSeparator(
                          designWidth: 335,
                          designHeight: 8,
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: const Color(
                                0xFFE5E5EC,
                              ),
                              width: App.instance.overlay.relativeScreenWidth(
                                1,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(
                              App.instance.overlay.relativeScreenWidth(
                                8,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                              App.instance.overlay.relativeScreenWidth(
                                20,
                              ),
                              vertical:
                              App.instance.overlay.relativeScreenHeight(
                                24,
                              ),
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '단백질 제품 추천',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        20,
                                      ),
                                      color: const Color(
                                        0xFF344BC1,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                  App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '이윤구님의 운동 수준에 적합한 탄수화물 제품을 추천드립니다.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        12,
                                      ),
                                      color: const Color(
                                        0xFF888888,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                  App.instance.overlay.relativeScreenHeight(
                                    24,
                                  ),
                                  thickness: 0,
                                ),
                                GridView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: App.instance.overlay
                                        .relativeScreenHeight(
                                      24,
                                    ),
                                    crossAxisSpacing: App.instance.overlay
                                        .relativeScreenWidth(
                                      16,
                                    ),
                                    childAspectRatio: 140 / 270,
                                  ),
                                  itemCount: 4,
                                  itemBuilder: (context, index) =>
                                      BysonAspectRatio(
                                        designWidth: 140,
                                        designHeight: 270,
                                        builder: (converter) {

                                          final String title;
                                          final String price;
                                          final String subTitle;
                                          final AssetGenImage assetGenImage;

                                          switch (index) {
                                            case 0:
                                              title = '신성에프엔비';
                                              price = '23,900원';
                                              subTitle = '해맑음 바로먹는 순수고구마, 130g, 10개';
                                              assetGenImage = Assets.image.imgProduct0;
                                              break;

                                            case 1:
                                              title = '햇반';
                                              price = '19,660원';
                                              subTitle = '햇반 100% 현미로 지은 밥, 130g, 24개';
                                              assetGenImage = Assets.image.imgProduct1;
                                              break;

                                            default:
                                              title = 'BSN';
                                              price = '75,150원';
                                              subTitle = '신타-6 프로틴 파우더 드링크 믹스 단백질 보충제 초콜릿 밀크셰이크, 2.27kg, 1개';
                                              assetGenImage = Assets.image.imgProduct;
                                              break;
                                          }

                                          return BysonCupertinoButton.solid(
                                            onPressed: () => launchUrlString(
                                              'https://www.coupang.com/vp/products/8203767283?itemId=17461238041&vendorItemId=3180840758&q=프로틴&itemsCount=36&searchId=08e6407f6c3c4e40a8af0939ba39737c&rank=1&searchRank=1&isAddedCart=',
                                            ),
                                            child: Stack(
                                              children: [
                                                PositionedDirectional(
                                                  top: 0,
                                                  start: 0,
                                                  end: 0,
                                                  height: converter.h(
                                                    140,
                                                  ),
                                                  child: PhysicalModel(
                                                    color: const Color(0xFF000000)
                                                        .withOpacity(
                                                      0.05,
                                                    ),
                                                    child:
                                                    assetGenImage.image(
                                                      alignment: Alignment.center,
                                                      fit: BoxFit.contain,
                                                      width: converter.w(
                                                        140,
                                                      ),
                                                      height: converter.h(
                                                        140,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                PositionedDirectional(
                                                  top: converter.h(
                                                    148,
                                                  ),
                                                  start: 0,
                                                  end: 0,
                                                  height: converter.h(
                                                    18,
                                                  ),
                                                  child: Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Text(
                                                      title,
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                        height: 1.5,
                                                        fontSize: App.instance.overlay
                                                            .relativeScreenHeight(
                                                          12,
                                                        ),
                                                        color: const Color(
                                                          0xFF111111,
                                                        ),
                                                        fontWeight:
                                                        FontWeightAlias.medium,
                                                        letterSpacing: converter.lt(
                                                          fontSize: 12,
                                                          percent: -2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                PositionedDirectional(
                                                  top: converter.h(
                                                    166,
                                                  ),
                                                  start: 0,
                                                  end: 0,
                                                  child: Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Text(
                                                      subTitle,
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                        height: 1.5,
                                                        fontSize: App.instance.overlay
                                                            .relativeScreenHeight(
                                                          12,
                                                        ),
                                                        color: const Color(
                                                          0xFF888888,
                                                        ),
                                                        fontWeight:
                                                        FontWeightAlias.regular,
                                                        letterSpacing: converter.lt(
                                                          fontSize: 12,
                                                          percent: -2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                PositionedDirectional(
                                                  bottom: converter.h(
                                                    25,
                                                  ),
                                                  start: 0,
                                                  end: 0,
                                                  height: converter.h(
                                                    21,
                                                  ),
                                                  child: Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Text(
                                                      price,
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                        height: 1.5,
                                                        fontSize: App.instance.overlay
                                                            .relativeScreenHeight(
                                                          14,
                                                        ),
                                                        color: const Color(
                                                          0xFF111111,
                                                        ),
                                                        fontWeight:
                                                        FontWeightAlias.medium,
                                                        letterSpacing: converter.lt(
                                                          fontSize: 14,
                                                          percent: -2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                PositionedDirectional(
                                                  bottom: 0,
                                                  start: 0,
                                                  end: 0,
                                                  height: converter.h(
                                                    21,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      DecoratedBox(
                                                        decoration:
                                                        const BoxDecoration(
                                                          color: Color(
                                                            0xFFF1F5FD,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsets.symmetric(
                                                            horizontal: converter.w(
                                                              4,
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              '#로켓직구',
                                                              textAlign:
                                                              TextAlign.start,
                                                              style: TextStyle(
                                                                height: 1.5,
                                                                fontSize: App
                                                                    .instance.overlay
                                                                    .relativeScreenHeight(
                                                                  11,
                                                                ),
                                                                color: const Color(
                                                                  0xFF111111,
                                                                ),
                                                                fontWeight:
                                                                FontWeightAlias
                                                                    .regular,
                                                                letterSpacing:
                                                                converter.lt(
                                                                  fontSize: 11,
                                                                  percent: -2,
                                                                ),
                                                              ),
                                                            ),
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
                                                      DecoratedBox(
                                                        decoration:
                                                        const BoxDecoration(
                                                          color: Color(
                                                            0xFFF1F5FD,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsets.symmetric(
                                                            horizontal: converter.w(
                                                              4,
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              '#프로틴',
                                                              textAlign:
                                                              TextAlign.start,
                                                              style: TextStyle(
                                                                height: 1.5,
                                                                fontSize: App
                                                                    .instance.overlay
                                                                    .relativeScreenHeight(
                                                                  11,
                                                                ),
                                                                color: const Color(
                                                                  0xFF111111,
                                                                ),
                                                                fontWeight:
                                                                FontWeightAlias
                                                                    .regular,
                                                                letterSpacing:
                                                                converter.lt(
                                                                  fontSize: 11,
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
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const BysonSeparator(
                          designWidth: 335,
                          designHeight: 8,
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: const Color(
                                0xFFE5E5EC,
                              ),
                              width: App.instance.overlay.relativeScreenWidth(
                                1,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(
                              App.instance.overlay.relativeScreenWidth(
                                8,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                              App.instance.overlay.relativeScreenWidth(
                                20,
                              ),
                              vertical:
                              App.instance.overlay.relativeScreenHeight(
                                24,
                              ),
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '지방 제품 추천',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        20,
                                      ),
                                      color: const Color(
                                        0xFF344BC1,
                                      ),
                                      fontWeight: FontWeightAlias.semiBold,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                  App.instance.overlay.relativeScreenHeight(
                                    8,
                                  ),
                                  thickness: 0,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '이윤구님의 운동 수준에 적합한 탄수화물 제품을 추천드립니다.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: App.instance.overlay
                                          .relativeScreenHeight(
                                        12,
                                      ),
                                      color: const Color(
                                        0xFF888888,
                                      ),
                                      fontWeight: FontWeightAlias.regular,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.transparent,
                                  height:
                                  App.instance.overlay.relativeScreenHeight(
                                    24,
                                  ),
                                  thickness: 0,
                                ),
                                GridView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: App.instance.overlay
                                        .relativeScreenHeight(
                                      24,
                                    ),
                                    crossAxisSpacing: App.instance.overlay
                                        .relativeScreenWidth(
                                      16,
                                    ),
                                    childAspectRatio: 140 / 270,
                                  ),
                                  itemCount: 4,
                                  itemBuilder: (context, index) =>
                                      BysonAspectRatio(
                                        designWidth: 140,
                                        designHeight: 270,
                                        builder: (converter) {

                                          final String title;
                                          final String price;
                                          final String subTitle;
                                          final AssetGenImage assetGenImage;

                                          switch (index) {
                                            case 0:
                                              title = '신성에프엔비';
                                              price = '23,900원';
                                              subTitle = '해맑음 바로먹는 순수고구마, 130g, 10개';
                                              assetGenImage = Assets.image.imgProduct0;
                                              break;

                                            case 1:
                                              title = '햇반';
                                              price = '19,660원';
                                              subTitle = '햇반 100% 현미로 지은 밥, 130g, 24개';
                                              assetGenImage = Assets.image.imgProduct1;
                                              break;

                                            default:
                                              title = 'BSN';
                                              price = '75,150원';
                                              subTitle = '신타-6 프로틴 파우더 드링크 믹스 단백질 보충제 초콜릿 밀크셰이크, 2.27kg, 1개';
                                              assetGenImage = Assets.image.imgProduct;
                                              break;
                                          }

                                          return BysonCupertinoButton.solid(
                                            onPressed: () => launchUrlString(
                                              'https://www.coupang.com/vp/products/8203767283?itemId=17461238041&vendorItemId=3180840758&q=프로틴&itemsCount=36&searchId=08e6407f6c3c4e40a8af0939ba39737c&rank=1&searchRank=1&isAddedCart=',
                                            ),
                                            child: Stack(
                                              children: [
                                                PositionedDirectional(
                                                  top: 0,
                                                  start: 0,
                                                  end: 0,
                                                  height: converter.h(
                                                    140,
                                                  ),
                                                  child: PhysicalModel(
                                                    color: const Color(0xFF000000)
                                                        .withOpacity(
                                                      0.05,
                                                    ),
                                                    child:
                                                    assetGenImage.image(
                                                      alignment: Alignment.center,
                                                      fit: BoxFit.contain,
                                                      width: converter.w(
                                                        140,
                                                      ),
                                                      height: converter.h(
                                                        140,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                PositionedDirectional(
                                                  top: converter.h(
                                                    148,
                                                  ),
                                                  start: 0,
                                                  end: 0,
                                                  height: converter.h(
                                                    18,
                                                  ),
                                                  child: Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Text(
                                                      title,
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                        height: 1.5,
                                                        fontSize: App.instance.overlay
                                                            .relativeScreenHeight(
                                                          12,
                                                        ),
                                                        color: const Color(
                                                          0xFF111111,
                                                        ),
                                                        fontWeight:
                                                        FontWeightAlias.medium,
                                                        letterSpacing: converter.lt(
                                                          fontSize: 12,
                                                          percent: -2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                PositionedDirectional(
                                                  top: converter.h(
                                                    166,
                                                  ),
                                                  start: 0,
                                                  end: 0,
                                                  child: Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Text(
                                                      subTitle,
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                        height: 1.5,
                                                        fontSize: App.instance.overlay
                                                            .relativeScreenHeight(
                                                          12,
                                                        ),
                                                        color: const Color(
                                                          0xFF888888,
                                                        ),
                                                        fontWeight:
                                                        FontWeightAlias.regular,
                                                        letterSpacing: converter.lt(
                                                          fontSize: 12,
                                                          percent: -2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                PositionedDirectional(
                                                  bottom: converter.h(
                                                    25,
                                                  ),
                                                  start: 0,
                                                  end: 0,
                                                  height: converter.h(
                                                    21,
                                                  ),
                                                  child: Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Text(
                                                      price,
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                        height: 1.5,
                                                        fontSize: App.instance.overlay
                                                            .relativeScreenHeight(
                                                          14,
                                                        ),
                                                        color: const Color(
                                                          0xFF111111,
                                                        ),
                                                        fontWeight:
                                                        FontWeightAlias.medium,
                                                        letterSpacing: converter.lt(
                                                          fontSize: 14,
                                                          percent: -2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                PositionedDirectional(
                                                  bottom: 0,
                                                  start: 0,
                                                  end: 0,
                                                  height: converter.h(
                                                    21,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      DecoratedBox(
                                                        decoration:
                                                        const BoxDecoration(
                                                          color: Color(
                                                            0xFFF1F5FD,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsets.symmetric(
                                                            horizontal: converter.w(
                                                              4,
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              '#로켓직구',
                                                              textAlign:
                                                              TextAlign.start,
                                                              style: TextStyle(
                                                                height: 1.5,
                                                                fontSize: App
                                                                    .instance.overlay
                                                                    .relativeScreenHeight(
                                                                  11,
                                                                ),
                                                                color: const Color(
                                                                  0xFF111111,
                                                                ),
                                                                fontWeight:
                                                                FontWeightAlias
                                                                    .regular,
                                                                letterSpacing:
                                                                converter.lt(
                                                                  fontSize: 11,
                                                                  percent: -2,
                                                                ),
                                                              ),
                                                            ),
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
                                                      DecoratedBox(
                                                        decoration:
                                                        const BoxDecoration(
                                                          color: Color(
                                                            0xFFF1F5FD,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsets.symmetric(
                                                            horizontal: converter.w(
                                                              4,
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              '#프로틴',
                                                              textAlign:
                                                              TextAlign.start,
                                                              style: TextStyle(
                                                                height: 1.5,
                                                                fontSize: App
                                                                    .instance.overlay
                                                                    .relativeScreenHeight(
                                                                  11,
                                                                ),
                                                                color: const Color(
                                                                  0xFF111111,
                                                                ),
                                                                fontWeight:
                                                                FontWeightAlias
                                                                    .regular,
                                                                letterSpacing:
                                                                converter.lt(
                                                                  fontSize: 11,
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
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  bottomNavigationBar: SafeArea(
                    child: BysonAspectRatio.padding(
                      designWidth: designWidth,
                      designHeight: 16 + 60 + 16,
                      designPadding: const EdgeInsets.only(
                        top: 16,
                        left: 20,
                        right: 20,
                        bottom: 16,
                      ),
                      builder: (converter) => BysonCupertinoButton.solid(
                        onPressed: () => App.instance.navigator.pop(),
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
                            '영양분석 완료',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              // height: 1.5,
                              fontSize: converter.h(
                                18,
                              ),
                              color: Colors.white,
                              fontWeight: FontWeightAlias.regular,
                              letterSpacing: converter.lt(
                                fontSize: 18,
                                percent: -2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget _buildExpansionTile({
    required BuildContext context,
    required String title,
    String? description,
    List<String> options = const [
      '주요 기능: 근육 성장 촉진, 운동 후 회복',
      '권장 섭취량: 20-40g / day (체중에 따라)',
      '부작용: 신장 부담, 복부 팽만감',
      '주의사항: 신장 질환 환자 섭취 주의',
    ],
    bool initiallyExpanded = false,
  }) =>
      Theme(
        data: Theme.of(
          context,
        ).copyWith(
          dividerColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
        ),
        child: ListTileTheme(
          minVerticalPadding: 0,
          contentPadding: EdgeInsets.zero,
          selectedColor: Colors.white,
          selectedTileColor: Colors.white,
          child: ExpansionTile(
            minTileHeight: 0,
            initiallyExpanded: initiallyExpanded,
            tilePadding: EdgeInsets.zero,
            childrenPadding: EdgeInsets.zero,
            title: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                textAlign: TextAlign.start,
                style: TextStyle(
                  height: 1.5,
                  fontSize: App.instance.overlay.relativeScreenHeight(
                    16,
                  ),
                  color: const Color(
                    0xFF111111,
                  ),
                  fontWeight: FontWeightAlias.semiBold,
                  letterSpacing: 0,
                ),
              ),
            ),
            children: [
              if (description != null) ... [
                Divider(
                  color: Colors.transparent,
                  height: App.instance.overlay.relativeScreenHeight(
                    4,
                  ),
                  thickness: 0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    description,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      height: 1.5,
                      fontSize: App.instance.overlay.relativeScreenHeight(
                        12,
                      ),
                      color: const Color(
                        0xFF888888,
                      ),
                      fontWeight: FontWeightAlias.regular,
                      letterSpacing: 0,
                    ),
                  ),
                ),
              ],
              Divider(
                color: Colors.transparent,
                height: App.instance.overlay.relativeScreenHeight(
                  8,
                ),
                thickness: 0,
              ),
              ListView.separated(
                shrinkWrap: true,
                itemCount: options.length,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => const BysonSeparator(
                  designWidth: 295,
                  designHeight: 8,
                ),
                itemBuilder: (context, index) => Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '• ${options[index]}',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      height: 1.5,
                      fontSize: App.instance.overlay.relativeScreenHeight(
                        12,
                      ),
                      color: const Color(
                        0xFF111111,
                      ),
                      fontWeight: FontWeightAlias.regular,
                      letterSpacing: 0,
                    ),
                  ),
                ),
              ),
              // Divider(
              //   color: Colors.transparent,
              //   height: App.instance.overlay.relativeScreenHeight(
              //     24,
              //   ),
              //   thickness: 0,
              // ),
            ],
          ),
        ),
      );

}
