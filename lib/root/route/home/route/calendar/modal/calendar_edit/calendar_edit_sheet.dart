import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/app/misc/extensions.dart';
import 'package:app/root/route/home/route/calendar/calendar_bloc.dart';
import 'package:app/root/route/home/route/calendar/modal/calendar_dialog/calendar_dialog.dart';
import 'package:app/root/route/home/route/calendar/modal/calendar_edit/calendar_edit_bloc.dart';
import 'package:app/root/route/home/route/notification/notification_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:preload_page_view/preload_page_view.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarEditSheet extends StatelessWidget {
  static Future<dynamic> show({
    required BuildContext context,
    required DateTime dateTime,
    String content = '',}) => showMaterialModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    builder: (context) => CalendarEditSheet._(
      dateTime: dateTime,
      content: content,
    ),
  );

  const CalendarEditSheet._({
    required this.dateTime,
    required this.content,
    super.key,
  });

  final DateTime dateTime;
  final String content;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => CalendarEditBloc(
          content: content,
        ),
        child: Builder(
          builder: (context) => Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(
                context,
              ).viewInsets.bottom,
            ),
            child: SafeArea(
              top: false,
              child: BysonAspectRatio(
                designWidth: designWidth,
                designHeight: 360,
                builder: (converter) => Stack(
                  children: [
                    PositionedDirectional(
                      top: 0,
                      start: 0,
                      width: converter.w(
                        20 + 24 + 20,
                      ),
                      height: converter.h(
                        24 + 24 + 24,
                      ),
                      child: BysonCupertinoButton.solid(
                        onPressed: () => App.instance.navigator.pop(),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 24,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.close,
                            size: converter.w(
                              24,
                            ),
                            color: const Color(
                              0xFF111111,
                            ),
                          ),
                        ),
                      ),
                    ),

                    PositionedDirectional(
                      top: 0,
                      end: 0,
                      width: converter.w(
                        20 + 24 + 20,
                      ),
                      height: converter.h(
                        24 + 24 + 24,
                      ),
                      child: BlocBuilder<CalendarEditBloc, CalendarEditState>(
                        buildWhen: (previous, current) => (previous.content != current.content),
                        builder: (context, state) => BysonCupertinoButton.solid(
                          onPressed: () => App.instance.navigator.pop(
                            state.content,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 24,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.check_rounded,
                              size: converter.w(
                                24,
                              ),
                              color: const Color(
                                0xFF111111,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    PositionedDirectional(
                      top: converter.h(
                        72,
                      ),
                      start: converter.w(
                        20,
                      ),
                      height: converter.h(
                        30,
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
                                20,
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
                                20,
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
                      bottom: converter.h(
                        242,
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
                      top: converter.h(
                        134,
                      ),
                      start: converter.w(
                        20,
                      ),
                      end: converter.w(
                        20,
                      ),
                      bottom: converter.h(
                        16,
                      ),
                      child: TextField(
                        controller: context.read<CalendarEditBloc>().textEditingController,
                        autofocus: true,
                        maxLines: 999,
                        textAlignVertical: TextAlignVertical.top,
                        onChanged: (value) => context.read<CalendarEditBloc>().add(
                          CalendarEditEvent.onContentChanged(
                            value: value,
                          )
                        ),
                        style: TextStyle(
                          height: 1.5,
                          fontSize: converter.h(
                            18,
                          ),
                          color: const Color(
                            0xFF111111,
                          ),
                          fontWeight: FontWeightAlias.regular,
                          letterSpacing: converter.w(
                            -2,
                          ),
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '메모를 입력하세요',
                          hintStyle: TextStyle(
                            height: 1.5,
                            fontSize: converter.h(
                              18,
                            ),
                            color: const Color(
                              0xFF888888,
                            ),
                            fontWeight: FontWeightAlias.regular,
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
            ),
          ),
        ),
      );
}
