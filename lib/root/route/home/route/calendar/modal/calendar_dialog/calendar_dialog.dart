import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/app/misc/extensions.dart';
import 'package:app/root/route/home/route/calendar/calendar_bloc.dart';
import 'package:app/root/route/home/route/notification/notification_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:intl/intl.dart';
import 'package:preload_page_view/preload_page_view.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarDialog extends StatelessWidget {

  static Future<dynamic> show({
    required BuildContext context,
    required DateTime dateTime,
    required String content,
  }) => showDialog(
    context: context,
    builder: (context) => CalendarDialog._(
      dateTime: dateTime,
      content: content,
    ),
  );

  final DateTime dateTime;
  final String content;

  const CalendarDialog._({
    required this.dateTime,
    required this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        App.instance.overlay.relativeScreenWidth(
          16,
        ),
      ),
    ),
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
    clipBehavior: Clip.antiAlias,
    insetPadding: EdgeInsets.symmetric(
      horizontal: App.instance.overlay.relativeScreenWidth(
        20,
      ),
    ),
    child: BysonAspectRatio(
      designWidth: designWidth - 40,
      designHeight: 365,
      builder: (converter) => Stack(
        children: [
          PositionedDirectional(
            top: converter.h(
              24.5,
            ),
            start: converter.w(
              20,
            ),
            height: converter.h(
              27,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  DateFormat(
                    'M월 d일',
                  ).format(
                    dateTime,
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    // height: 1.5,
                    fontSize: converter.h(
                      18,
                    ),
                    color: const Color(
                      0xFF111111,
                    ),
                    fontWeight: FontWeightAlias.semiBold,
                    letterSpacing: converter.w(
                      -2,
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
                Text(
                  DateFormat(
                    '(EEE)',
                    'ko_KR',
                  ).format(
                    dateTime,
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    // height: 1.5,
                    fontSize: converter.h(
                      18,
                    ),
                    color: const Color(
                      0xFF111111,
                    ),
                    fontWeight: FontWeightAlias.semiBold,
                    letterSpacing: converter.w(
                      -2,
                    ),
                  ),
                ),
              ],
            ),
          ),

          PositionedDirectional(
            top: 0,
            end: 0,
            width: converter.w(
              20 + 28 + 20,
            ),
            height: converter.h(
              24 + 28 + 24,
            ),
            child: BysonCupertinoButton.solid(
              onPressed: () => App.instance.navigator.pop(
                true,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 24,
              ),
              child: Center(
                child: Assets.icon.icPencli.svg(
                  fit: BoxFit.contain,
                  width: converter.w(
                    28,
                  ),
                  height: converter.h(
                    28,
                  ),
                ),
              ),
            ),
          ),

          PositionedDirectional(
            top: converter.h(
              76,
            ),
            start: converter.w(
              20,
            ),
            end: converter.w(
              20,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                content,
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.5,
                  fontSize: converter.h(
                    16,
                  ),
                  color: const Color(
                    0xFF111111,
                  ),
                  fontWeight: FontWeightAlias.regular,
                  letterSpacing: converter.w(
                    -2,
                  ),
                ),
              ),
            ),
          ),

          PositionedDirectional(
            bottom: converter.h(
              171,
            ),
            start: converter.w(
              20,
            ),
            end: converter.w(
              20,
            ),
            height: converter.h(
              1,
            ),
            child: Divider(
              color: const Color(
                0xFFE7E7E7,
              ),
              thickness: converter.h(
                1,
              ),
              height: converter.h(
                1,
              ),
            ),
          ),

          PositionedDirectional(
            bottom: converter.h(
              120,
            ),
            start: converter.w(
              20,
            ),
            height: converter.h(
              27,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '기록 한눈에 보기',
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.5,
                  fontSize: converter.h(
                    18,
                  ),
                  color: const Color(
                    0xFF111111,
                  ),
                  fontWeight: FontWeightAlias.semiBold,
                  letterSpacing: converter.w(
                    -2,
                  ),
                ),
              ),
            ),
          ),

          PositionedDirectional(
            bottom: converter.h(
              68,
            ),
            start: converter.w(
              48.5,
            ),
            width: converter.w(
              28,
            ),
            height: converter.h(
              28,
            ),
            child: Center(
              child: Assets.icon.icQuestionCircleFilled.svg(
                fit: BoxFit.contain,
                alignment: Alignment.center,
                width: converter.w(
                  28,
                ),
                height: converter.h(
                  28,
                ),
              ),
            ),
          ),
          PositionedDirectional(
            bottom: converter.h(
              68,
            ),
            start: converter.hcx(
              28,
            ),
            width: converter.w(
              28,
            ),
            height: converter.h(
              28,
            ),
            child: Center(
              child: Assets.icon.icQuestionCircleFilled.svg(
                fit: BoxFit.contain,
                alignment: Alignment.center,
                width: converter.w(
                  28,
                ),
                height: converter.h(
                  28,
                ),
              ),
            ),
          ),
          PositionedDirectional(
            bottom: converter.h(
              68,
            ),
            end: converter.w(
              48.5,
            ),
            width: converter.w(
              28,
            ),
            height: converter.h(
              28,
            ),
            child: Center(
              child: Assets.icon.icQuestionCircleFilled.svg(
                fit: BoxFit.contain,
                alignment: Alignment.center,
                width: converter.w(
                  28,
                ),
                height: converter.h(
                  28,
                ),
              ),
            ),
          ),

          PositionedDirectional(
            bottom: converter.h(
              39,
            ),
            start: converter.w(
              20,
            ),
            width: converter.w(
              85,
            ),
            height: converter.h(
              21,
            ),
            child: Center(
              child: Text(
                '체중 기록',
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.5,
                  fontSize: converter.h(
                    14,
                  ),
                  color: const Color(
                    0xFFB0B0B0,
                  ),
                  fontWeight: FontWeightAlias.semiBold,
                  letterSpacing: converter.w(
                    -2,
                  ),
                ),
              ),
            ),
          ),
          PositionedDirectional(
            bottom: converter.h(
              39,
            ),
            start: converter.hcx(
              85,
            ),
            width: converter.w(
              85,
            ),
            height: converter.h(
              21,
            ),
            child: Center(
              child: Text(
                '운동 기록',
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.5,
                  fontSize: converter.h(
                    14,
                  ),
                  color: const Color(
                    0xFFB0B0B0,
                  ),
                  fontWeight: FontWeightAlias.semiBold,
                  letterSpacing: converter.w(
                    -2,
                  ),
                ),
              ),
            ),
          ),
          PositionedDirectional(
            bottom: converter.h(
              39,
            ),
            end: converter.w(
              20,
            ),
            width: converter.w(
              85,
            ),
            height: converter.h(
              21,
            ),
            child: Center(
              child: Text(
                '섭취기록',
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.5,
                  fontSize: converter.h(
                    14,
                  ),
                  color: const Color(
                    0xFFB0B0B0,
                  ),
                  fontWeight: FontWeightAlias.semiBold,
                  letterSpacing: converter.w(
                    -2,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
