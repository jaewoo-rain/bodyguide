import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/app/misc/extensions.dart';
import 'package:app/model/local/event.dart';
import 'package:app/root/route/home/page/my/route/app_setting/app_setting_bloc.dart';
import 'package:app/root/route/home/route/calendar/calendar_bloc.dart';
import 'package:app/root/route/home/route/calendar/modal/calendar_dialog/calendar_dialog.dart';
import 'package:app/root/route/home/route/calendar/modal/calendar_edit/calendar_edit_sheet.dart';
import 'package:app/root/route/home/route/notification/notification_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:intl/intl.dart';
import 'package:preload_page_view/preload_page_view.dart';
import 'package:table_calendar/table_calendar.dart';

class AppSettingRoute extends StatelessWidget {
  const AppSettingRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AppSettingBloc(),
          ),
        ],
        child: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
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
                          '앱 설정',
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
            body: SingleChildScrollView(
              child: Column(
                children: [
                  BysonAspectRatio(
                    designWidth: designWidth,
                    designHeight: 56,
                    builder: (converter) => BysonCupertinoButton.solid(
                      onPressed: () {},
                      color: const Color(
                        0xFFE5E5EC,
                      ),
                      child: Stack(
                        children: [
                          PositionedDirectional(
                            top: converter.vcy(
                              24,
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
                                '알림 설정',
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
                        ],
                      ),
                    ),
                  ),
                  BysonAspectRatio(
                    designWidth: designWidth,
                    designHeight: 56,
                    builder: (converter) => BysonCupertinoButton.solid(
                      onPressed: () {},
                      color: Colors.white,
                      child: Stack(
                        children: [
                          PositionedDirectional(
                            top: converter.vcy(
                              24,
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
                                '나의 기록 알림',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: converter.h(
                                    16,
                                  ),
                                  color: const Color(
                                    0xFF111111,
                                  ),
                                  fontWeight: FontWeightAlias.regular,
                                  letterSpacing: converter.lt(
                                    fontSize: 16,
                                    percent: -2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          PositionedDirectional(
                            top: converter.vcy(
                              28,
                            ),
                            end: converter.w(
                              20,
                            ),
                            width: converter.w(
                              52,
                            ),
                            height: converter.h(
                              28,
                            ),
                            child: FittedBox(
                              child:
                                  BlocBuilder<AppSettingBloc, AppSettingState>(
                                buildWhen: (previous, current) =>
                                    (previous.myHistoryAlarm !=
                                        current.myHistoryAlarm),
                                builder: (context, state) => CupertinoSwitch(
                                  onChanged: (value) =>
                                      context.read<AppSettingBloc>().add(
                                            const AppSettingEvent
                                                .onToggleMyHistoryAlarm(),
                                          ),
                                  activeColor: const Color(
                                    0xFF344BC1,
                                  ),
                                  value: state.myHistoryAlarm,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  BysonAspectRatio(
                    designWidth: designWidth,
                    designHeight: 56,
                    builder: (converter) => BysonCupertinoButton.solid(
                      onPressed: () {},
                      color: Colors.white,
                      child: Stack(
                        children: [
                          PositionedDirectional(
                            top: converter.vcy(
                              24,
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
                                '바디가이드 알림',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: converter.h(
                                    16,
                                  ),
                                  color: const Color(
                                    0xFF111111,
                                  ),
                                  fontWeight: FontWeightAlias.regular,
                                  letterSpacing: converter.lt(
                                    fontSize: 16,
                                    percent: -2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          PositionedDirectional(
                            top: converter.vcy(
                              28,
                            ),
                            end: converter.w(
                              20,
                            ),
                            width: converter.w(
                              52,
                            ),
                            height: converter.h(
                              28,
                            ),
                            child: FittedBox(
                              child:
                                  BlocBuilder<AppSettingBloc, AppSettingState>(
                                buildWhen: (previous, current) =>
                                    (previous.bodyGuideAlarm !=
                                        current.bodyGuideAlarm),
                                builder: (context, state) => CupertinoSwitch(
                                  onChanged: (value) =>
                                      context.read<AppSettingBloc>().add(
                                            const AppSettingEvent
                                                .onToggleBodyGuideAlarm(),
                                          ),
                                  activeColor: const Color(
                                    0xFF344BC1,
                                  ),
                                  value: state.bodyGuideAlarm,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  BysonAspectRatio(
                    designWidth: designWidth,
                    designHeight: 56,
                    builder: (converter) => BysonCupertinoButton.solid(
                      onPressed: () {},
                      color: const Color(
                        0xFFE5E5EC,
                      ),
                      child: Stack(
                        children: [
                          PositionedDirectional(
                            top: converter.vcy(
                              24,
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
                                '바디가이드',
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
                        ],
                      ),
                    ),
                  ),
                  BysonAspectRatio(
                    designWidth: designWidth,
                    designHeight: 56,
                    builder: (converter) => BysonCupertinoButton.solid(
                      onPressed: () {},
                      color: Colors.white,
                      child: Stack(
                        children: [
                          PositionedDirectional(
                            top: converter.vcy(
                              24,
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
                                '공지사항',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: converter.h(
                                    16,
                                  ),
                                  color: const Color(
                                    0xFF111111,
                                  ),
                                  fontWeight: FontWeightAlias.regular,
                                  letterSpacing: converter.lt(
                                    fontSize: 16,
                                    percent: -2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          PositionedDirectional(
                            top: converter.vcy(
                              28,
                            ),
                            end: converter.w(
                              20,
                            ),
                            width: converter.w(
                              24,
                            ),
                            height: converter.h(
                              24,
                            ),
                            child: Icon(
                              IconsaxPlusLinear.arrow_right_3,
                              color: const Color(
                                0xFF0C0507,
                              ),
                              size: converter.h(
                                24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  BysonAspectRatio(
                    designWidth: designWidth,
                    designHeight: 56,
                    builder: (converter) => BysonCupertinoButton.solid(
                      onPressed: () {},
                      color: Colors.white,
                      child: Stack(
                        children: [
                          PositionedDirectional(
                            top: converter.vcy(
                              24,
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
                                '자주 묻는 질문',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: converter.h(
                                    16,
                                  ),
                                  color: const Color(
                                    0xFF111111,
                                  ),
                                  fontWeight: FontWeightAlias.regular,
                                  letterSpacing: converter.lt(
                                    fontSize: 16,
                                    percent: -2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          PositionedDirectional(
                            top: converter.vcy(
                              28,
                            ),
                            end: converter.w(
                              20,
                            ),
                            width: converter.w(
                              24,
                            ),
                            height: converter.h(
                              24,
                            ),
                            child: Icon(
                              IconsaxPlusLinear.arrow_right_3,
                              color: const Color(
                                0xFF0C0507,
                              ),
                              size: converter.h(
                                24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  BysonAspectRatio(
                    designWidth: designWidth,
                    designHeight: 56,
                    builder: (converter) => BysonCupertinoButton.solid(
                      onPressed: () {},
                      color: Colors.white,
                      child: Stack(
                        children: [
                          PositionedDirectional(
                            top: converter.vcy(
                              24,
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
                                '1:1 문의',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: converter.h(
                                    16,
                                  ),
                                  color: const Color(
                                    0xFF111111,
                                  ),
                                  fontWeight: FontWeightAlias.regular,
                                  letterSpacing: converter.lt(
                                    fontSize: 16,
                                    percent: -2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          PositionedDirectional(
                            top: converter.vcy(
                              28,
                            ),
                            end: converter.w(
                              20,
                            ),
                            width: converter.w(
                              24,
                            ),
                            height: converter.h(
                              24,
                            ),
                            child: Icon(
                              IconsaxPlusLinear.arrow_right_3,
                              color: const Color(
                                0xFF0C0507,
                              ),
                              size: converter.h(
                                24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  BysonAspectRatio(
                    designWidth: designWidth,
                    designHeight: 56,
                    builder: (converter) => BysonCupertinoButton.solid(
                      onPressed: () {},
                      color: Colors.white,
                      child: Stack(
                        children: [
                          PositionedDirectional(
                            top: converter.vcy(
                              24,
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
                                '약관 및 정책',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: converter.h(
                                    16,
                                  ),
                                  color: const Color(
                                    0xFF111111,
                                  ),
                                  fontWeight: FontWeightAlias.regular,
                                  letterSpacing: converter.lt(
                                    fontSize: 16,
                                    percent: -2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          PositionedDirectional(
                            top: converter.vcy(
                              28,
                            ),
                            end: converter.w(
                              20,
                            ),
                            width: converter.w(
                              24,
                            ),
                            height: converter.h(
                              24,
                            ),
                            child: Icon(
                              IconsaxPlusLinear.arrow_right_3,
                              color: const Color(
                                0xFF0C0507,
                              ),
                              size: converter.h(
                                24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  BysonAspectRatio(
                    designWidth: designWidth,
                    designHeight: 56,
                    builder: (converter) => BysonCupertinoButton.solid(
                      onPressed: () {},
                      color: Colors.white,
                      child: Stack(
                        children: [
                          PositionedDirectional(
                            top: converter.vcy(
                              24,
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
                                '사업자 정보',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: converter.h(
                                    16,
                                  ),
                                  color: const Color(
                                    0xFF111111,
                                  ),
                                  fontWeight: FontWeightAlias.regular,
                                  letterSpacing: converter.lt(
                                    fontSize: 16,
                                    percent: -2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          PositionedDirectional(
                            top: converter.vcy(
                              28,
                            ),
                            end: converter.w(
                              20,
                            ),
                            width: converter.w(
                              24,
                            ),
                            height: converter.h(
                              24,
                            ),
                            child: Icon(
                              IconsaxPlusLinear.arrow_right_3,
                              color: const Color(
                                0xFF0C0507,
                              ),
                              size: converter.h(
                                24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  BysonAspectRatio(
                    designWidth: designWidth,
                    designHeight: 56,
                    builder: (converter) => BysonCupertinoButton.solid(
                      onPressed: () {},
                      color: const Color(
                        0xFFE5E5EC,
                      ),
                      child: Stack(
                        children: [
                          PositionedDirectional(
                            top: converter.vcy(
                              24,
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
                                '계정',
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
                        ],
                      ),
                    ),
                  ),
                  BysonAspectRatio(
                    designWidth: designWidth,
                    designHeight: 56,
                    builder: (converter) => BysonCupertinoButton.solid(
                      onPressed: () {
                        // App.instance.overlay.cover(
                        //   on: true,
                        // );
                        //
                        // App.instance.auth.signOut();
                        context
                            .read<AppSettingBloc>()
                            .add(const AppSettingEvent.logout());
                      },
                      color: Colors.white,
                      child: Stack(
                        children: [
                          PositionedDirectional(
                            top: converter.vcy(
                              24,
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
                                '로그아웃',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: converter.h(
                                    16,
                                  ),
                                  color: const Color(
                                    0xFF888888,
                                  ),
                                  fontWeight: FontWeightAlias.regular,
                                  letterSpacing: converter.lt(
                                    fontSize: 16,
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
                  BysonAspectRatio(
                    designWidth: designWidth,
                    designHeight: 56,
                    builder: (converter) => BysonCupertinoButton.solid(
                      onPressed: () {},
                      color: Colors.white,
                      child: Stack(
                        children: [
                          PositionedDirectional(
                            top: converter.vcy(
                              24,
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
                                '탈퇴하기',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: converter.h(
                                    16,
                                  ),
                                  color: const Color(
                                    0xFF888888,
                                  ),
                                  fontWeight: FontWeightAlias.regular,
                                  letterSpacing: converter.lt(
                                    fontSize: 16,
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
            backgroundColor: Colors.white,
          ),
        ),
      );
}
