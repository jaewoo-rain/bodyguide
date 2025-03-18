import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/root/route/home/home_bloc.dart';
import 'package:app/root/route/home/page/my/my_bloc.dart';
import 'package:app/root/route/home/page/my/route/my_edit/my_edit_bloc.dart';
import 'package:app/root/route/home/page/my/route/my_edit/my_edit_route.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:intl/intl.dart';

class MyPage extends StatelessWidget {
  const MyPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyBloc()..add(const MyEvent.mock()),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(
              0xFF344BC1,
            ),
            surfaceTintColor: const Color(
              0xFF344BC1,
            ),
            automaticallyImplyLeading: false,
            scrolledUnderElevation: 0,
            elevation: 0,
            systemOverlayStyle: systemUiOverlayStyleLight,
            flexibleSpace: SafeArea(
              child: BysonAspectRatio(
                designWidth: designWidth,
                designHeight: 56,
                builder: (converter) => Stack(
                  children: [
                    Center(
                      child: Text(
                        '마이페이지',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 1.5,
                          fontSize: converter.h(
                            20,
                          ),
                          color: Colors.white,
                          fontWeight: FontWeightAlias.extraBold,
                          letterSpacing: converter.w(
                            -0.5,
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
                          Routes.appSetting.path,
                        ),
                        child: Center(
                          child: Icon(
                            IconsaxPlusLinear.setting_2,
                            color: Colors.white,
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
          body: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: BlocBuilder<MyBloc, MyState>(builder: (context, state) {
              // 예: 데이터가 없을 때 로딩 인디케이터 표시
              if (!state.isLoaded) {
                // 로딩 화면
                return BysonAspectRatio(
                  designWidth: designWidth,
                  designHeight: 400,
                  builder: (converter) => Stack(
                    children: [
                      PositionedDirectional(
                        top: 180,
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
                          '나의 정보를\n가져오고 있습니다.',
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
                );
              } else {
                return Column(
                  children: [
                    const BysonSeparator(
                      designWidth: designWidth,
                      designHeight: 24,
                    ),
                    BysonAspectRatio(
                      designWidth: designWidth,
                      designHeight: 42,
                      builder: (converter) => Stack(
                        children: [
                          PositionedDirectional(
                            start: converter.w(
                              20,
                            ),
                            top: 0,
                            bottom: 0,
                            width: converter.w(
                              40,
                            ),
                            child: BlocBuilder<MyBloc, MyState>(
                                builder: (context, state) {
                              return Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image:
                                        state.userProfile['profileImg'] != null
                                            ? NetworkImage(
                                                state.userProfile['profileImg'])
                                            : AssetImage(
                                                "asset/icon/ic_profile_circle"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            }),
                          ),
                          PositionedDirectional(
                            top: 0,
                            start: converter.w(
                              68,
                            ),
                            height: converter.h(
                              24,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: BlocBuilder<MyBloc, MyState>(
                                  builder: (context, state) {
                                return Text(
                                  // '왕근육민석',
                                  state.userProfile['nickname'].toString(),
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: converter.h(
                                      16,
                                    ),
                                    color: const Color(
                                      0xFF000000,
                                    ),
                                    fontWeight: FontWeightAlias.regular,
                                    letterSpacing: converter.lt(
                                      fontSize: 16,
                                      percent: -2,
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                          PositionedDirectional(
                            bottom: 0,
                            start: converter.w(
                              68,
                            ),
                            height: converter.h(
                              18,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '${state.userProfile["registerDate"].split('-')[0]}년 ${state.userProfile["registerDate"].split('-')[1]}월 ${state.userProfile["registerDate"].split('-')[2]}일 가입', // 2025-01-14
                                // '2---년 --월 --일 가입',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  height: 1.5,
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
                          ),
                          PositionedDirectional(
                            top: 0,
                            bottom: 0,
                            end: converter.w(
                              20,
                            ),
                            width: converter.w(
                              90,
                            ),
                            child: BysonCupertinoButton.outlinedSolid(
                              onPressed: () {
                                // navigator_core에 BlocProvider선언함
                                App.instance.navigator.push(
                                  Routes.myEdit.path,
                                  extra: {
                                    'initialNickName': state
                                            .userProfile['nickname']
                                            ?.toString() ??
                                        '',
                                    'initialIntroText': state
                                            .userProfile['introText']
                                            ?.toString() ??
                                        '',
                                    'myBloc': context.read<MyBloc>(),
                                  },
                                );
                              },
                              borderRadius: BorderRadius.all(
                                converter.radius(
                                  100,
                                ),
                              ),
                              border: Border.all(
                                width: converter.h(
                                  1,
                                ),
                                style: BorderStyle.solid,
                                strokeAlign: BorderSide.strokeAlignInside,
                                color: const Color(
                                  0xFFB0B0B0,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '내 정보 설정',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: converter.h(
                                      14,
                                    ),
                                    color: const Color(
                                      0xFF3D3D3D,
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
                          ),
                        ],
                      ),
                    ),
                    const BysonSeparator(
                      designWidth: designWidth,
                      designHeight: 16,
                    ),
                    BysonAspectRatio(
                      designWidth: designWidth,
                      designHeight: 84,
                      builder: (converter) => Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Divider(
                              indent: converter.w(
                                20,
                              ),
                              endIndent: converter.w(
                                20,
                              ),
                              color: const Color(
                                0xFFE5E5EC,
                              ),
                              height: converter.h(
                                1,
                              ),
                              thickness: converter.h(
                                1,
                              ),
                            ),
                          ),
                          PositionedDirectional(
                            top: converter.h(
                              16,
                            ),
                            start: converter.w(
                              20,
                            ),
                            width: converter.w(
                              111.67,
                            ),
                            height: converter.h(
                              21,
                            ),
                            child: Center(
                              child: Text(
                                '운동기록',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.5,
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
                          ),
                          PositionedDirectional(
                            top: converter.h(
                              41,
                            ),
                            start: converter.w(
                              20,
                            ),
                            width: converter.w(
                              111.67,
                            ),
                            height: converter.h(
                              27,
                            ),
                            child: Center(
                              child: Text(
                                state.activityProfile['exerciseCount']
                                    .toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: converter.h(
                                    18,
                                  ),
                                  color: const Color(
                                    0xFF3D5DD3,
                                  ),
                                  fontWeight: FontWeightAlias.semiBold,
                                  letterSpacing: converter.lt(
                                    fontSize: 18,
                                    percent: -2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          PositionedDirectional(
                            top: converter.h(
                              16,
                            ),
                            start: converter.w(
                              131.67,
                            ),
                            width: converter.w(
                              111.67,
                            ),
                            height: converter.h(
                              21,
                            ),
                            child: Center(
                              child: Text(
                                '식단기록',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.5,
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
                          ),
                          PositionedDirectional(
                            top: converter.h(
                              41,
                            ),
                            start: converter.w(
                              131.67,
                            ),
                            width: converter.w(
                              111.67,
                            ),
                            height: converter.h(
                              27,
                            ),
                            child: Center(
                              child: Text(
                                '1회',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: converter.h(
                                    18,
                                  ),
                                  color: const Color(
                                    0xFF3D5DD3,
                                  ),
                                  fontWeight: FontWeightAlias.semiBold,
                                  letterSpacing: converter.lt(
                                    fontSize: 18,
                                    percent: -2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          PositionedDirectional(
                            top: converter.h(
                              16,
                            ),
                            end: converter.w(
                              20,
                            ),
                            width: converter.w(
                              111.67,
                            ),
                            height: converter.h(
                              21,
                            ),
                            child: Center(
                              child: Text(
                                '사용자 레벨',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.5,
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
                          ),
                          PositionedDirectional(
                            top: converter.h(
                              41,
                            ),
                            end: converter.w(
                              20,
                            ),
                            width: converter.w(
                              111.67,
                            ),
                            height: converter.h(
                              27,
                            ),
                            child: Center(
                              child: Text(
                                'LV. ${state.expProfile['level'].toString()}',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: converter.h(
                                    18,
                                  ),
                                  color: const Color(
                                    0xFF3D5DD3,
                                  ),
                                  fontWeight: FontWeightAlias.semiBold,
                                  letterSpacing: converter.lt(
                                    fontSize: 18,
                                    percent: -2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Divider(
                              indent: converter.w(
                                20,
                              ),
                              endIndent: converter.w(
                                20,
                              ),
                              color: const Color(
                                0xFFE5E5EC,
                              ),
                              height: converter.h(
                                1,
                              ),
                              thickness: converter.h(
                                1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const BysonSeparator(
                      designWidth: designWidth,
                      designHeight: 16,
                    ),
                    BysonAspectRatio(
                      designWidth: designWidth,
                      designHeight: 49,
                      builder: (converter) => Stack(
                        children: [
                          PositionedDirectional(
                            top: 0,
                            start: converter.w(
                              20,
                            ),
                            height: converter.h(
                              21,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'EXP ${state.expProfile['currentExp'].toString()} / '
                                  '${(state.expProfile['currentExp'] + state.expProfile['requiredExp']).toString()} '
                                  '(${((state.expProfile['currentExp'] / (state.expProfile['currentExp'] + state.expProfile['requiredExp'])) * 100).toInt()}%)',
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
                                Icon(
                                  IconsaxPlusLinear.info_circle,
                                  color: const Color(
                                    0xFF999999,
                                  ),
                                  size: converter.h(
                                    20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          PositionedDirectional(
                            bottom: 0,
                            start: converter.w(
                              20,
                            ),
                            end: converter.w(
                              20,
                            ),
                            height: converter.h(
                              20,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  converter.radius(
                                    4,
                                  ),
                                ),
                                color: const Color(
                                  0xFFF1F5FD,
                                ),
                              ),
                            ),
                          ),
                          PositionedDirectional(
                            bottom: 0,
                            start: converter.w(
                              20,
                            ),
                            // width: (designWidth / 100) * 25 - converter.w(30),
                            width: (designWidth / 100) *
                                    ((state.expProfile['currentExp'] /
                                                (state.expProfile[
                                                        'currentExp'] +
                                                    state.expProfile[
                                                        'requiredExp'])) *
                                            100)
                                        .toInt() -
                                converter.w(30),

                            height: converter.h(
                              20,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  converter.radius(
                                    4,
                                  ),
                                ),
                                color: const Color(
                                  0xFFA0BEF0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const BysonSeparator(
                      designWidth: designWidth,
                      designHeight: 24,
                    ),
                    const BysonSeparator(
                      designWidth: designWidth,
                      designHeight: 16,
                      decoration: BoxDecoration(
                        color: Color(
                          0xFFF1F1F5,
                        ),
                      ),
                    ),
                    BysonAspectRatio(
                      designWidth: designWidth,
                      designHeight: 246,
                      builder: (converter) => Stack(
                        children: [
                          PositionedDirectional(
                            top: converter.h(
                              20,
                            ),
                            start: converter.w(
                              20,
                            ),
                            height: converter.h(
                              24,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '통합 기록',
                                textAlign: TextAlign.start,
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
                              60,
                            ),
                            start: converter.w(
                              20,
                            ),
                            height: converter.h(
                              30,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '${state.exercisePerformance['totalScore'].toInt()}점',
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
                          ),
                          PositionedDirectional(
                            top: converter.h(
                              92,
                            ),
                            start: converter.w(
                              20,
                            ),
                            height: converter.h(
                              18,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '최근 업데이트 ${DateFormat('yyyy.MM.dd').format(DateTime.parse(state.exercisePerformance['scoreUpdatedAt']))}',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: converter.h(
                                    12,
                                  ),
                                  color: const Color(
                                    0xFFB0B0B0,
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
                          PositionedDirectional(
                            top: converter.h(
                              118,
                            ),
                            start: converter.w(
                              20,
                            ),
                            height: converter.h(
                              30,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                state.exercisePerformance['exerciseLevel']
                                    .toString(),
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
                          ),
                          PositionedDirectional(
                            top: converter.h(
                              150,
                            ),
                            start: converter.w(
                              20,
                            ),
                            height: converter.h(
                              18,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '최근 업데이트 ${DateFormat('yyyy.MM.dd').format(DateTime.parse(state.exercisePerformance['levelUpdatedAt']))}',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: converter.h(
                                    12,
                                  ),
                                  color: const Color(
                                    0xFFB0B0B0,
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
                          PositionedDirectional(
                            top: converter.h(
                              176,
                            ),
                            start: converter.w(
                              20,
                            ),
                            height: converter.h(
                              30,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '${state.exercisePerformance['bigThree'].toInt().toString()}kg',
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
                          ),
                          PositionedDirectional(
                            top: converter.h(
                              208,
                            ),
                            start: converter.w(
                              20,
                            ),
                            height: converter.h(
                              18,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '최근 업데이트 ${DateFormat('yyyy.MM.dd').format(DateTime.parse(state.exercisePerformance['bigThreeUpdatedAt']))}',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: converter.h(
                                    12,
                                  ),
                                  color: const Color(
                                    0xFFB0B0B0,
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
                    // const BysonSeparator(
                    //   designWidth: designWidth,
                    //   designHeight: 16,
                    //   decoration: BoxDecoration(
                    //     color: Color(
                    //       0xFFF1F1F5,
                    //     ),
                    //   ),
                    // ),
                    // BysonAspectRatio(
                    //   designWidth: designWidth,
                    //   designHeight: 188,
                    //   builder: (converter) => Stack(
                    //     children: [
                    //       PositionedDirectional(
                    //         top: converter.h(
                    //           20,
                    //         ),
                    //         start: converter.w(
                    //           20,
                    //         ),
                    //         height: converter.h(
                    //           24,
                    //         ),
                    //         child: Align(
                    //           alignment: Alignment.centerLeft,
                    //           child: Text(
                    //             '운동 랭킹',
                    //             textAlign: TextAlign.start,
                    //             style: TextStyle(
                    //               height: 1.5,
                    //               fontSize: converter.h(
                    //                 16,
                    //               ),
                    //               color: const Color(
                    //                 0xFF111111,
                    //               ),
                    //               fontWeight: FontWeightAlias.semiBold,
                    //               letterSpacing: converter.lt(
                    //                 fontSize: 16,
                    //                 percent: -2,
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //       PositionedDirectional(
                    //         top: converter.h(
                    //           60,
                    //         ),
                    //         start: converter.w(
                    //           20,
                    //         ),
                    //         height: converter.h(
                    //           30,
                    //         ),
                    //         child: Align(
                    //           alignment: Alignment.centerLeft,
                    //           child: Text(
                    //             '상위 82%',
                    //             textAlign: TextAlign.start,
                    //             style: TextStyle(
                    //               height: 1.5,
                    //               fontSize: converter.h(
                    //                 20,
                    //               ),
                    //               color: const Color(
                    //                 0xFF111111,
                    //               ),
                    //               fontWeight: FontWeightAlias.semiBold,
                    //               letterSpacing: converter.lt(
                    //                 fontSize: 20,
                    //                 percent: -2,
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //       PositionedDirectional(
                    //         top: converter.h(
                    //           92,
                    //         ),
                    //         start: converter.w(
                    //           20,
                    //         ),
                    //         height: converter.h(
                    //           18,
                    //         ),
                    //         child: Align(
                    //           alignment: Alignment.centerLeft,
                    //           child: Text(
                    //             '최근 업데이트 2024.10.06.',
                    //             textAlign: TextAlign.start,
                    //             style: TextStyle(
                    //               height: 1.5,
                    //               fontSize: converter.h(
                    //                 12,
                    //               ),
                    //               color: const Color(
                    //                 0xFFB0B0B0,
                    //               ),
                    //               fontWeight: FontWeightAlias.regular,
                    //               letterSpacing: converter.lt(
                    //                 fontSize: 12,
                    //                 percent: -2,
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //       PositionedDirectional(
                    //         top: converter.h(
                    //           118,
                    //         ),
                    //         start: converter.w(
                    //           20,
                    //         ),
                    //         height: converter.h(
                    //           30,
                    //         ),
                    //         child: Align(
                    //           alignment: Alignment.centerLeft,
                    //           child: Text(
                    //             '102,193위',
                    //             textAlign: TextAlign.start,
                    //             style: TextStyle(
                    //               height: 1.5,
                    //               fontSize: converter.h(
                    //                 20,
                    //               ),
                    //               color: const Color(
                    //                 0xFF111111,
                    //               ),
                    //               fontWeight: FontWeightAlias.semiBold,
                    //               letterSpacing: converter.lt(
                    //                 fontSize: 20,
                    //                 percent: -2,
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //       PositionedDirectional(
                    //         top: converter.h(
                    //           150,
                    //         ),
                    //         start: converter.w(
                    //           20,
                    //         ),
                    //         height: converter.h(
                    //           18,
                    //         ),
                    //         child: Align(
                    //           alignment: Alignment.centerLeft,
                    //           child: Text(
                    //             '최근 업데이트 2024.10.06.',
                    //             textAlign: TextAlign.start,
                    //             style: TextStyle(
                    //               height: 1.5,
                    //               fontSize: converter.h(
                    //                 12,
                    //               ),
                    //               color: const Color(
                    //                 0xFFB0B0B0,
                    //               ),
                    //               fontWeight: FontWeightAlias.regular,
                    //               letterSpacing: converter.lt(
                    //                 fontSize: 12,
                    //                 percent: -2,
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // const BysonSeparator(
                    //   designWidth: designWidth,
                    //   designHeight: 16,
                    //   decoration: BoxDecoration(
                    //     color: Color(
                    //       0xFFF1F1F5,
                    //     ),
                    //   ),
                    // ),
                    // BysonAspectRatio(
                    //   designWidth: designWidth,
                    //   designHeight: 208,
                    //   builder: (converter) => Stack(
                    //     children: [
                    //       PositionedDirectional(
                    //         top: converter.h(
                    //           20,
                    //         ),
                    //         start: converter.w(
                    //           20,
                    //         ),
                    //         height: converter.h(
                    //           24,
                    //         ),
                    //         child: Align(
                    //           alignment: Alignment.centerLeft,
                    //           child: Text(
                    //             '최근에 추천받은 제품',
                    //             textAlign: TextAlign.start,
                    //             style: TextStyle(
                    //               height: 1.5,
                    //               fontSize: converter.h(
                    //                 16,
                    //               ),
                    //               color: const Color(
                    //                 0xFF111111,
                    //               ),
                    //               fontWeight: FontWeightAlias.semiBold,
                    //               letterSpacing: converter.lt(
                    //                 fontSize: 16,
                    //                 percent: -2,
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //       PositionedDirectional(
                    //         top: converter.h(
                    //           60,
                    //         ),
                    //         start: converter.w(
                    //           20,
                    //         ),
                    //         width: converter.h(
                    //           60,
                    //         ),
                    //         height: converter.h(
                    //           60,
                    //         ),
                    //         child: Container(
                    //           color: Colors.red,
                    //         ),
                    //       ),
                    //       PositionedDirectional(
                    //         top: converter.h(
                    //           66,
                    //         ),
                    //         start: converter.w(
                    //           88,
                    //         ),
                    //         height: converter.h(
                    //           27,
                    //         ),
                    //         child: Align(
                    //           alignment: Alignment.centerLeft,
                    //           child: Text(
                    //             '보충제 추천',
                    //             textAlign: TextAlign.start,
                    //             style: TextStyle(
                    //               height: 1.5,
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
                    //         ),
                    //       ),
                    //       PositionedDirectional(
                    //         top: converter.h(
                    //           95.5,
                    //         ),
                    //         start: converter.w(
                    //           88,
                    //         ),
                    //         height: converter.h(
                    //           18,
                    //         ),
                    //         child: Align(
                    //           alignment: Alignment.centerLeft,
                    //           child: Text(
                    //             '최근 업데이트 2024.10.06.',
                    //             textAlign: TextAlign.start,
                    //             style: TextStyle(
                    //               height: 1.5,
                    //               fontSize: converter.h(
                    //                 12,
                    //               ),
                    //               color: const Color(
                    //                 0xFFB0B0B0,
                    //               ),
                    //               fontWeight: FontWeightAlias.regular,
                    //               letterSpacing: converter.lt(
                    //                 fontSize: 12,
                    //                 percent: -2,
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //       PositionedDirectional(
                    //         top: converter.h(
                    //           128,
                    //         ),
                    //         start: converter.w(
                    //           20,
                    //         ),
                    //         width: converter.h(
                    //           60,
                    //         ),
                    //         height: converter.h(
                    //           60,
                    //         ),
                    //         child: Container(
                    //           color: Colors.red,
                    //         ),
                    //       ),
                    //       PositionedDirectional(
                    //         top: converter.h(
                    //           134.5,
                    //         ),
                    //         start: converter.w(
                    //           88,
                    //         ),
                    //         height: converter.h(
                    //           27,
                    //         ),
                    //         child: Align(
                    //           alignment: Alignment.centerLeft,
                    //           child: Text(
                    //             '다이어트 식단 추천',
                    //             textAlign: TextAlign.start,
                    //             style: TextStyle(
                    //               height: 1.5,
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
                    //         ),
                    //       ),
                    //       PositionedDirectional(
                    //         top: converter.h(
                    //           163.5,
                    //         ),
                    //         start: converter.w(
                    //           88,
                    //         ),
                    //         height: converter.h(
                    //           18,
                    //         ),
                    //         child: Align(
                    //           alignment: Alignment.centerLeft,
                    //           child: Text(
                    //             '최근 업데이트 2024.10.06.',
                    //             textAlign: TextAlign.start,
                    //             style: TextStyle(
                    //               height: 1.5,
                    //               fontSize: converter.h(
                    //                 12,
                    //               ),
                    //               color: const Color(
                    //                 0xFFB0B0B0,
                    //               ),
                    //               fontWeight: FontWeightAlias.regular,
                    //               letterSpacing: converter.lt(
                    //                 fontSize: 12,
                    //                 percent: -2,
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    const BysonSeparator(
                      designWidth: designWidth,
                      designHeight: 16,
                      decoration: BoxDecoration(
                        color: Color(
                          0xFFF1F1F5,
                        ),
                      ),
                    ),
                  ],
                );
              }
            }),
          ),
          // body: SingleChildScrollView(
          //   physics: const ClampingScrollPhysics(),
          //   padding: EdgeInsets.symmetric(
          //     vertical: App.instance.overlay.relativeScreenHeight(
          //       16,
          //     ),
          //   ),
          //   child: Column(
          //     children: [
          //       const BysonSeparator(
          //         designWidth: designWidth,
          //         designHeight: 16,
          //       ),
          //       BysonAspectRatio.padding(
          //         designWidth: designWidth,
          //         designHeight: 180,
          //         designPadding: const EdgeInsets.symmetric(
          //           horizontal: 10,
          //         ),
          //         builder: (converter) => Stack(
          //           children: [
          //             PageView.builder(
          //               itemCount: 99,
          //               scrollDirection: Axis.horizontal,
          //               itemBuilder: (context, index) => Container(
          //                 // color: Colors.red,
          //                 child: Assets.image.imgBanner.image(
          //                   alignment: Alignment.center,
          //                   width: designWidth,
          //                   fit: BoxFit.cover,
          //                   // width: converter.realSize.width,
          //                   // height: converter.realSize.height,
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       const BysonSeparator(
          //         designWidth: designWidth,
          //         designHeight: 16,
          //       ),
          //       BysonAspectRatio.padding(
          //         designWidth: designWidth,
          //         designHeight: 172,
          //         designPadding: const EdgeInsets.symmetric(
          //           horizontal: 20,
          //         ),
          //         builder: (converter) => Stack(
          //           children: [
          //             PositionedDirectional(
          //               start: 0,
          //               top: 0,
          //               bottom: 0,
          //               width: converter.w(
          //                 160,
          //               ),
          //               child: DecoratedBox(
          //                 decoration: BoxDecoration(
          //                   color: Colors.white,
          //                   borderRadius: BorderRadius.all(
          //                     converter.radius(
          //                       16,
          //                     ),
          //                   ),
          //                   boxShadow: [
          //                     BoxShadow(
          //                       offset: Offset(
          //                         converter.w(
          //                           2,
          //                         ),
          //                         converter.h(
          //                           4,
          //                         ),
          //                       ),
          //                       spreadRadius: 0,
          //                       blurRadius: converter.average(
          //                         12,
          //                       ),
          //                       color: Colors.black.withOpacity(
          //                         0.04,
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //                 child: Stack(
          //                   children: [
          //                     PositionedDirectional(
          //                       top: converter.h(
          //                         20,
          //                       ),
          //                       start: converter.w(
          //                         16,
          //                       ),
          //                       height: converter.h(
          //                         21,
          //                       ),
          //                       child: Align(
          //                         alignment: Alignment.centerLeft,
          //                         child: Text(
          //                           '체중',
          //                           textAlign: TextAlign.start,
          //                           style: TextStyle(
          //                             height: 1.5,
          //                             fontSize: converter.h(
          //                               14,
          //                             ),
          //                             color: const Color(
          //                               0xFF888888,
          //                             ),
          //                             fontWeight: FontWeightAlias.medium,
          //                             letterSpacing: converter.lt(
          //                               fontSize: 14,
          //                               percent: -2,
          //                             ),
          //                           ),
          //                         ),
          //                       ),
          //                     ),
          //                     PositionedDirectional(
          //                       top: converter.h(
          //                         45,
          //                       ),
          //                       start: converter.w(
          //                         16,
          //                       ),
          //                       height: converter.h(
          //                         24,
          //                       ),
          //                       child: Align(
          //                         alignment: Alignment.centerLeft,
          //                         child: Text(
          //                           '81.8kg',
          //                           textAlign: TextAlign.start,
          //                           style: TextStyle(
          //                             height: 1.2,
          //                             fontSize: converter.h(
          //                               20,
          //                             ),
          //                             color: const Color(
          //                               0xFF111111,
          //                             ),
          //                             fontWeight: FontWeightAlias.semiBold,
          //                             letterSpacing: converter.lt(
          //                               fontSize: 20,
          //                               percent: -2,
          //                             ),
          //                           ),
          //                         ),
          //                       ),
          //                     ),
          //                     PositionedDirectional(
          //                       bottom: converter.h(
          //                         20,
          //                       ),
          //                       end: converter.w(
          //                         16,
          //                       ),
          //                       width: converter.w(
          //                         64,
          //                       ),
          //                       height: converter.h(
          //                         64,
          //                       ),
          //                       child: Assets.image.imgWeightScale.image(
          //                         width: converter.w(
          //                           64,
          //                         ),
          //                         height: converter.h(
          //                           64,
          //                         ),
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             PositionedDirectional(
          //               end: 0,
          //               top: 0,
          //               bottom: 0,
          //               width: converter.w(
          //                 160,
          //               ),
          //               child: DecoratedBox(
          //                 decoration: BoxDecoration(
          //                   color: Colors.white,
          //                   borderRadius: BorderRadius.all(
          //                     converter.radius(
          //                       16,
          //                     ),
          //                   ),
          //                   boxShadow: [
          //                     BoxShadow(
          //                       offset: Offset(
          //                         converter.w(
          //                           2,
          //                         ),
          //                         converter.h(
          //                           4,
          //                         ),
          //                       ),
          //                       spreadRadius: 0,
          //                       blurRadius: converter.average(
          //                         12,
          //                       ),
          //                       color: Colors.black.withOpacity(
          //                         0.04,
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //                 child: BysonCupertinoButton.solid(
          //                   onPressed: () => App.instance.navigator.push(
          //                     Routes.recommendation.path,
          //                   ),
          //                   child: Stack(
          //                     children: [
          //                       PositionedDirectional(
          //                         top: converter.h(
          //                           20,
          //                         ),
          //                         start: converter.w(
          //                           16,
          //                         ),
          //                         height: converter.h(
          //                           21,
          //                         ),
          //                         child: Align(
          //                           alignment: Alignment.centerLeft,
          //                           child: Text(
          //                             '제품 추천',
          //                             textAlign: TextAlign.start,
          //                             style: TextStyle(
          //                               height: 1.5,
          //                               fontSize: converter.h(
          //                                 14,
          //                               ),
          //                               color: const Color(
          //                                 0xFF888888,
          //                               ),
          //                               fontWeight: FontWeightAlias.medium,
          //                               letterSpacing: converter.lt(
          //                                 fontSize: 14,
          //                                 percent: -2,
          //                               ),
          //                             ),
          //                           ),
          //                         ),
          //                       ),
          //                       PositionedDirectional(
          //                         top: converter.h(
          //                           45,
          //                         ),
          //                         start: converter.w(
          //                           16,
          //                         ),
          //                         height: converter.h(
          //                           24,
          //                         ),
          //                         child: Align(
          //                           alignment: Alignment.centerLeft,
          //                           child: Text(
          //                             '보충제, 뭐 먹지?',
          //                             textAlign: TextAlign.start,
          //                             style: TextStyle(
          //                               height: 1.2,
          //                               fontSize: converter.h(
          //                                 20,
          //                               ),
          //                               color: const Color(
          //                                 0xFF111111,
          //                               ),
          //                               fontWeight: FontWeightAlias.semiBold,
          //                               letterSpacing: converter.lt(
          //                                 fontSize: 20,
          //                                 percent: -2,
          //                               ),
          //                             ),
          //                           ),
          //                         ),
          //                       ),
          //                       PositionedDirectional(
          //                         bottom: converter.h(
          //                           20,
          //                         ),
          //                         end: converter.w(
          //                           16,
          //                         ),
          //                         width: converter.w(
          //                           64,
          //                         ),
          //                         height: converter.h(
          //                           64,
          //                         ),
          //                         child: Assets.image.imgProteins.image(
          //                           width: converter.w(
          //                             64,
          //                           ),
          //                           height: converter.h(
          //                             64,
          //                           ),
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       const BysonSeparator(
          //         designWidth: designWidth,
          //         designHeight: 16,
          //       ),
          //       BysonAspectRatio.padding(
          //         designWidth: designWidth,
          //         designHeight: 138,
          //         innerDecoration: (converter) => BoxDecoration(
          //           color: Colors.white,
          //           borderRadius: BorderRadius.all(
          //             converter.radius(
          //               16,
          //             ),
          //           ),
          //           boxShadow: [
          //             BoxShadow(
          //               offset: Offset(
          //                 converter.w(
          //                   2,
          //                 ),
          //                 converter.h(
          //                   4,
          //                 ),
          //               ),
          //               spreadRadius: 0,
          //               blurRadius: converter.average(
          //                 12,
          //               ),
          //               color: Colors.black.withOpacity(
          //                 0.04,
          //               ),
          //             ),
          //           ],
          //         ),
          //         designPadding: const EdgeInsets.symmetric(
          //           horizontal: 20,
          //         ),
          //         builder: (converter) => Stack(
          //           children: [
          //             PositionedDirectional(
          //               top: converter.h(
          //                 16,
          //               ),
          //               start: converter.w(
          //                 16,
          //               ),
          //               height: converter.h(
          //                 25,
          //               ),
          //               child: DecoratedBox(
          //                 decoration: BoxDecoration(
          //                   color: const Color(
          //                     0xFFF1F5FD,
          //                   ),
          //                   borderRadius: BorderRadius.all(
          //                     converter.radius(
          //                       100,
          //                     ),
          //                   ),
          //                 ),
          //                 child: Padding(
          //                   padding: EdgeInsets.symmetric(
          //                     horizontal: converter.w(
          //                       12,
          //                     ),
          //                     vertical: converter.h(
          //                       4,
          //                     ),
          //                   ),
          //                   child: Center(
          //                     child: Text(
          //                       '섭취를 기록해보세요',
          //                       textAlign: TextAlign.start,
          //                       style: TextStyle(
          //                         height: 1.5,
          //                         fontSize: converter.h(
          //                           11,
          //                         ),
          //                         color: const Color(
          //                           0xFF303F9F,
          //                         ),
          //                         fontWeight: FontWeightAlias.regular,
          //                         letterSpacing: converter.lt(
          //                           fontSize: 11,
          //                           percent: -2,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             PositionedDirectional(
          //               top: converter.h(
          //                 72,
          //               ),
          //               start: converter.w(
          //                 16,
          //               ),
          //               height: converter.h(
          //                 21,
          //               ),
          //               child: Align(
          //                 alignment: Alignment.centerLeft,
          //                 child: Text(
          //                   '섭취 기록',
          //                   textAlign: TextAlign.start,
          //                   style: TextStyle(
          //                     height: 1.5,
          //                     fontSize: converter.h(
          //                       14,
          //                     ),
          //                     color: const Color(
          //                       0xFF888888,
          //                     ),
          //                     fontWeight: FontWeightAlias.medium,
          //                     letterSpacing: converter.lt(
          //                       fontSize: 14,
          //                       percent: -2,
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             PositionedDirectional(
          //               top: converter.h(
          //                 97,
          //               ),
          //               start: converter.w(
          //                 16,
          //               ),
          //               height: converter.h(
          //                 24,
          //               ),
          //               child: Align(
          //                 alignment: Alignment.centerLeft,
          //                 child: Text(
          //                   '2,340kcal',
          //                   textAlign: TextAlign.start,
          //                   style: TextStyle(
          //                     height: 1.2,
          //                     fontSize: converter.h(
          //                       20,
          //                     ),
          //                     color: const Color(
          //                       0xFF111111,
          //                     ),
          //                     fontWeight: FontWeightAlias.semiBold,
          //                     letterSpacing: converter.lt(
          //                       fontSize: 20,
          //                       percent: -2,
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             PositionedDirectional(
          //               top: converter.h(
          //                 30,
          //               ),
          //               start: converter.w(
          //                 204,
          //               ),
          //               height: converter.h(
          //                 21,
          //               ),
          //               child: Row(
          //                 crossAxisAlignment: CrossAxisAlignment.center,
          //                 mainAxisAlignment: MainAxisAlignment.start,
          //                 children: [
          //                   SizedBox(
          //                     width: converter.w(
          //                       8,
          //                     ),
          //                     height: converter.h(
          //                       8,
          //                     ),
          //                     child: DecoratedBox(
          //                       decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.all(
          //                           converter.radius(
          //                             2,
          //                           ),
          //                         ),
          //                         color: const Color(
          //                           0xFF9CFF83,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                   VerticalDivider(
          //                     color: Colors.transparent,
          //                     width: converter.w(
          //                       8,
          //                     ),
          //                     thickness: 0,
          //                   ),
          //                   Text(
          //                     '탄수화물',
          //                     textAlign: TextAlign.start,
          //                     style: TextStyle(
          //                       height: 1.5,
          //                       fontSize: converter.h(
          //                         14,
          //                       ),
          //                       color: const Color(
          //                         0xFF888888,
          //                       ),
          //                       fontWeight: FontWeightAlias.medium,
          //                       letterSpacing: converter.lt(
          //                         fontSize: 14,
          //                         percent: -2,
          //                       ),
          //                     ),
          //                   ),
          //                   VerticalDivider(
          //                     color: Colors.transparent,
          //                     width: converter.w(
          //                       4,
          //                     ),
          //                     thickness: 0,
          //                   ),
          //                   Text(
          //                     '50%',
          //                     textAlign: TextAlign.start,
          //                     style: TextStyle(
          //                       height: 1.5,
          //                       fontSize: converter.h(
          //                         14,
          //                       ),
          //                       color: const Color(
          //                         0xFF111111,
          //                       ),
          //                       fontWeight: FontWeightAlias.semiBold,
          //                       letterSpacing: converter.lt(
          //                         fontSize: 14,
          //                         percent: -2,
          //                       ),
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             PositionedDirectional(
          //               top: converter.h(
          //                 59,
          //               ),
          //               start: converter.w(
          //                 204,
          //               ),
          //               height: converter.h(
          //                 21,
          //               ),
          //               child: Row(
          //                 crossAxisAlignment: CrossAxisAlignment.center,
          //                 mainAxisAlignment: MainAxisAlignment.start,
          //                 children: [
          //                   SizedBox(
          //                     width: converter.w(
          //                       8,
          //                     ),
          //                     height: converter.h(
          //                       8,
          //                     ),
          //                     child: DecoratedBox(
          //                       decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.all(
          //                           converter.radius(
          //                             2,
          //                           ),
          //                         ),
          //                         color: const Color(
          //                           0xFFFF6666,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                   VerticalDivider(
          //                     color: Colors.transparent,
          //                     width: converter.w(
          //                       8,
          //                     ),
          //                     thickness: 0,
          //                   ),
          //                   Text(
          //                     '단백질',
          //                     textAlign: TextAlign.start,
          //                     style: TextStyle(
          //                       height: 1.5,
          //                       fontSize: converter.h(
          //                         14,
          //                       ),
          //                       color: const Color(
          //                         0xFF888888,
          //                       ),
          //                       fontWeight: FontWeightAlias.medium,
          //                       letterSpacing: converter.lt(
          //                         fontSize: 14,
          //                         percent: -2,
          //                       ),
          //                     ),
          //                   ),
          //                   VerticalDivider(
          //                     color: Colors.transparent,
          //                     width: converter.w(
          //                       4,
          //                     ),
          //                     thickness: 0,
          //                   ),
          //                   Text(
          //                     '38%',
          //                     textAlign: TextAlign.start,
          //                     style: TextStyle(
          //                       height: 1.5,
          //                       fontSize: converter.h(
          //                         14,
          //                       ),
          //                       color: const Color(
          //                         0xFF111111,
          //                       ),
          //                       fontWeight: FontWeightAlias.semiBold,
          //                       letterSpacing: converter.lt(
          //                         fontSize: 14,
          //                         percent: -2,
          //                       ),
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             PositionedDirectional(
          //               top: converter.h(
          //                 88,
          //               ),
          //               start: converter.w(
          //                 204,
          //               ),
          //               height: converter.h(
          //                 21,
          //               ),
          //               child: Row(
          //                 crossAxisAlignment: CrossAxisAlignment.center,
          //                 mainAxisAlignment: MainAxisAlignment.start,
          //                 children: [
          //                   SizedBox(
          //                     width: converter.w(
          //                       8,
          //                     ),
          //                     height: converter.h(
          //                       8,
          //                     ),
          //                     child: DecoratedBox(
          //                       decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.all(
          //                           converter.radius(
          //                             2,
          //                           ),
          //                         ),
          //                         color: const Color(
          //                           0xFFFFD460,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                   VerticalDivider(
          //                     color: Colors.transparent,
          //                     width: converter.w(
          //                       8,
          //                     ),
          //                     thickness: 0,
          //                   ),
          //                   Text(
          //                     '지방',
          //                     textAlign: TextAlign.start,
          //                     style: TextStyle(
          //                       height: 1.5,
          //                       fontSize: converter.h(
          //                         14,
          //                       ),
          //                       color: const Color(
          //                         0xFF888888,
          //                       ),
          //                       fontWeight: FontWeightAlias.medium,
          //                       letterSpacing: converter.lt(
          //                         fontSize: 14,
          //                         percent: -2,
          //                       ),
          //                     ),
          //                   ),
          //                   VerticalDivider(
          //                     color: Colors.transparent,
          //                     width: converter.w(
          //                       4,
          //                     ),
          //                     thickness: 0,
          //                   ),
          //                   Text(
          //                     '22%',
          //                     textAlign: TextAlign.start,
          //                     style: TextStyle(
          //                       height: 1.5,
          //                       fontSize: converter.h(
          //                         14,
          //                       ),
          //                       color: const Color(
          //                         0xFF111111,
          //                       ),
          //                       fontWeight: FontWeightAlias.semiBold,
          //                       letterSpacing: converter.lt(
          //                         fontSize: 14,
          //                         percent: -2,
          //                       ),
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       const BysonSeparator(
          //         designWidth: designWidth,
          //         designHeight: 16,
          //       ),
          //       BysonAspectRatio.padding(
          //         designWidth: designWidth,
          //         designHeight: 141,
          //         innerDecoration: (converter) => BoxDecoration(
          //           color: Colors.white,
          //           borderRadius: BorderRadius.all(
          //             converter.radius(
          //               16,
          //             ),
          //           ),
          //           boxShadow: [
          //             BoxShadow(
          //               offset: Offset(
          //                 converter.w(
          //                   2,
          //                 ),
          //                 converter.h(
          //                   4,
          //                 ),
          //               ),
          //               spreadRadius: 0,
          //               blurRadius: converter.average(
          //                 12,
          //               ),
          //               color: Colors.black.withOpacity(
          //                 0.04,
          //               ),
          //             ),
          //           ],
          //         ),
          //         designPadding: const EdgeInsets.symmetric(
          //           horizontal: 20,
          //         ),
          //         builder: (converter) => Stack(
          //           children: [
          //             PositionedDirectional(
          //               top: converter.h(
          //                 16,
          //               ),
          //               start: converter.w(
          //                 16,
          //               ),
          //               height: converter.h(
          //                 25,
          //               ),
          //               child: DecoratedBox(
          //                 decoration: BoxDecoration(
          //                   color: const Color(
          //                     0xFFF1F5FD,
          //                   ),
          //                   borderRadius: BorderRadius.all(
          //                     converter.radius(
          //                       100,
          //                     ),
          //                   ),
          //                 ),
          //                 child: Padding(
          //                   padding: EdgeInsets.symmetric(
          //                     horizontal: converter.w(
          //                       12,
          //                     ),
          //                     vertical: converter.h(
          //                       4,
          //                     ),
          //                   ),
          //                   child: Center(
          //                     child: Text(
          //                       '운동을 기록해보세요',
          //                       textAlign: TextAlign.start,
          //                       style: TextStyle(
          //                         height: 1.5,
          //                         fontSize: converter.h(
          //                           11,
          //                         ),
          //                         color: const Color(
          //                           0xFF303F9F,
          //                         ),
          //                         fontWeight: FontWeightAlias.regular,
          //                         letterSpacing: converter.lt(
          //                           fontSize: 11,
          //                           percent: -2,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             PositionedDirectional(
          //               top: converter.h(
          //                 72,
          //               ),
          //               start: converter.w(
          //                 16,
          //               ),
          //               height: converter.h(
          //                 21,
          //               ),
          //               child: Align(
          //                 alignment: Alignment.centerLeft,
          //                 child: Text(
          //                   '운동 기록',
          //                   textAlign: TextAlign.start,
          //                   style: TextStyle(
          //                     height: 1.5,
          //                     fontSize: converter.h(
          //                       14,
          //                     ),
          //                     color: const Color(
          //                       0xFF888888,
          //                     ),
          //                     fontWeight: FontWeightAlias.medium,
          //                     letterSpacing: converter.lt(
          //                       fontSize: 14,
          //                       percent: -2,
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             PositionedDirectional(
          //               top: converter.h(
          //                 97,
          //               ),
          //               start: converter.w(
          //                 16,
          //               ),
          //               height: converter.h(
          //                 24,
          //               ),
          //               child: Align(
          //                 alignment: Alignment.centerLeft,
          //                 child: Text(
          //                   '81.8kg',
          //                   textAlign: TextAlign.start,
          //                   style: TextStyle(
          //                     height: 1.2,
          //                     fontSize: converter.h(
          //                       20,
          //                     ),
          //                     color: const Color(
          //                       0xFF111111,
          //                     ),
          //                     fontWeight: FontWeightAlias.semiBold,
          //                     letterSpacing: converter.lt(
          //                       fontSize: 20,
          //                       percent: -2,
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             PositionedDirectional(
          //               bottom: converter.h(
          //                 20,
          //               ),
          //               end: converter.w(
          //                 16,
          //               ),
          //               width: converter.w(
          //                 68,
          //               ),
          //               height: converter.h(
          //                 68,
          //               ),
          //               child: Assets.image.imgProgram.image(
          //                 width: converter.w(
          //                   68,
          //                 ),
          //                 height: converter.h(
          //                   68,
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       const BysonSeparator(
          //         designWidth: designWidth,
          //         designHeight: 16,
          //       ),
          //     ],
          //   ),
          // ),
        );
      }),
    );
  }
}
