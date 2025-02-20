import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/app/misc/extensions.dart';
import 'package:app/model/local/event.dart';
import 'package:app/root/route/home/page/my/my_bloc.dart';
import 'package:app/root/route/home/page/my/route/my_edit/my_edit_bloc.dart';
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

class MyEditRoute extends StatelessWidget {
  const MyEditRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Builder(
        // navigator_core에 BlocProvider선언함

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
                        '내 정보 설정',
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
                  designHeight: 184,
                  builder: (converter) => Stack(
                    children: [
                      PositionedDirectional(
                        top: converter.h(
                          24,
                        ),
                        start: converter.hcx(
                          120,
                        ),
                        width: converter.w(
                          120,
                        ),
                        height: converter.h(
                          120,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://i.namu.wiki/i/TYxKQDnuwFOcxdSaPR-L81SPQGf5aPEz13tINJ-Z508LKNtGmRmkZTKKEN82SrIZAYoLL8WSbXGzv2PiLgpRSg.webp',
                                // state.userProfile['profileImg']
                                //     .toString(),
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        top: converter.h(
                          112,
                        ),
                        start: converter.w(
                          216,
                        ),
                        width: converter.w(
                          32,
                        ),
                        height: converter.h(
                          32,
                        ),
                        child: Container(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                BysonAspectRatio(
                  designWidth: designWidth,
                  designHeight: 88,
                  builder: (converter) => Stack(
                    children: [
                      PositionedDirectional(
                        top: 0,
                        start: converter.w(
                          20,
                        ),
                        height: converter.h(
                          24,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '닉네임',
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
                        bottom: 0,
                        start: converter.w(
                          20,
                        ),
                        end: converter.w(
                          20,
                        ),
                        height: converter.h(
                          56,
                        ),
                        child: CupertinoTextField(
                          controller: context
                              .read<MyEditBloc>()
                              .textEditingControllerNickName,
                          padding: EdgeInsets.symmetric(
                            horizontal: converter.w(
                              24,
                            ),
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          style: TextStyle(
                            // height: 1.5,
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
                          decoration: BoxDecoration(
                            color: const Color(
                              0xFFF9F9F9,
                            ),
                            borderRadius: BorderRadius.all(
                              converter.radius(
                                4,
                              ),
                            ),
                            border: Border.all(
                              color: const Color(
                                0xFFDDDDDD,
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
                  designHeight: 24,
                ),
                BysonAspectRatio(
                  designWidth: designWidth,
                  designHeight: 239,
                  builder: (converter) => Stack(
                    children: [
                      PositionedDirectional(
                        top: 0,
                        start: converter.w(
                          20,
                        ),
                        height: converter.h(
                          24,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '한 줄 소개',
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
                        bottom: 0,
                        start: converter.w(
                          20,
                        ),
                        end: converter.w(
                          20,
                        ),
                        height: converter.h(
                          207,
                        ),
                        child: CupertinoTextField(
                          controller: context
                              .read<MyEditBloc>()
                              .textEditingControllerDescription,
                          padding: EdgeInsets.symmetric(
                            horizontal: converter.w(
                              24,
                            ),
                            vertical: converter.w(
                              16,
                            ),
                          ),
                          maxLines: 999,
                          textAlignVertical: TextAlignVertical.center,
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
                          decoration: BoxDecoration(
                            color: const Color(
                              0xFFF9F9F9,
                            ),
                            borderRadius: BorderRadius.all(
                              converter.radius(
                                4,
                              ),
                            ),
                            border: Border.all(
                              color: const Color(
                                0xFFDDDDDD,
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
          ),
          backgroundColor: Colors.white,
        ),
      );
}
