import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/misc/enums.dart';
import 'package:app/app/misc/extensions.dart';
import 'package:app/model/local/event.dart';
import 'package:app/root/route/home/route/calendar/calendar_bloc.dart';
import 'package:app/root/route/home/route/calendar/modal/calendar_dialog/calendar_dialog.dart';
import 'package:app/root/route/home/route/calendar/modal/calendar_edit/calendar_edit_sheet.dart';
import 'package:app/root/route/home/route/notification/notification_bloc.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:intl/intl.dart';
import 'package:preload_page_view/preload_page_view.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarRoute extends StatelessWidget {
  const CalendarRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CalendarBloc(),
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
                          '통합 기록',
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
            body: BlocBuilder<CalendarBloc,
                CalendarState>(
              buildWhen: (previous, current) =>
              (previous.dateTime != current.dateTime),
              builder: (context, state) => Column(
                children: [
                  BysonAspectRatio(
                    designWidth: designWidth,
                    designHeight: 60,
                    builder: (converter) => Stack(
                      children: [
                        PositionedDirectional(
                          top: 0,
                          start: 0,
                          end: 0,
                          height: converter.h(
                            60,
                          ),
                          child: BlocBuilder<CalendarBloc,
                              CalendarState>(
                            buildWhen: (previous, current) =>
                            (previous.dateTime != current.dateTime),
                            builder: (context, state) => Center(
                              child: Text(
                                DateFormat(
                                  'yyyy년 MM월',
                                ).format(
                                  state.dateTime,
                                ),
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
                          ),
                        ),
                        PositionedDirectional(
                          top: 0,
                          start: 0,
                          width: converter.w(
                            30 + 28,
                          ),
                          height: converter.h(
                            60,
                          ),
                          child: BysonCupertinoButton.solid(
                            onPressed: () =>
                                context.read<CalendarBloc>().add(
                                  const CalendarEvent
                                      .previousMonth(),
                                ),
                            alignment: Alignment.centerRight,
                            child: Icon(
                              IconsaxPlusLinear.arrow_left_1,
                              size: converter.h(
                                28,
                              ),
                              color: const Color(
                                0xFF111111,
                              ),
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          top: 0,
                          end: 0,
                          width: converter.w(
                            30 + 28,
                          ),
                          height: converter.h(
                            60,
                          ),
                          child: BysonCupertinoButton.solid(
                            onPressed: () => context
                                .read<CalendarBloc>()
                                .add(
                              const CalendarEvent.nextMonth(),
                            ),
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              IconsaxPlusLinear.arrow_right_3,
                              size: converter.h(
                                28,
                              ),
                              color: const Color(
                                0xFF111111,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  BysonAspectRatio(
                    designWidth: designWidth,
                    designHeight: 71,
                    builder: (converter) => Stack(
                      children: [
                        PositionedDirectional(
                          top: converter.h(
                            10,
                          ),
                          start: 0,
                          end: 0,
                          height: converter.h(
                            41,
                          ),
                          child: BlocBuilder<CalendarBloc,
                              CalendarState>(
                            buildWhen: (previous, current) =>
                            (previous.selectedCalendarEventTypes !=
                                current.selectedCalendarEventTypes),
                            builder: (context, state) => ListView.separated(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.symmetric(
                                horizontal: converter.w(
                                  20,
                                ),
                              ),
                              separatorBuilder: (context, index) =>
                                  VerticalDivider(
                                    color: Colors.transparent,
                                    width: converter.w(
                                      8,
                                    ),
                                    thickness: 0,
                                  ),
                              itemBuilder: (context, index) =>
                                  BysonCupertinoButton.outlined(
                                    onPressed: () =>
                                        context.read<CalendarBloc>().add(
                                          CalendarEvent
                                              .toggleCalendarEventType(
                                            value: CalendarEventType.values.elementAt(
                                              index,
                                            ),
                                          ),
                                        ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: converter.w(
                                        16,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.all(
                                      converter.radius(
                                        100,
                                      ),
                                    ),
                                    color: switch (state.selectedCalendarEventTypes.contains(
                                      CalendarEventType.values.elementAt(
                                        index,
                                      ),
                                    )) {
                                      true => const Color(
                                        0xFF3D5DD3,
                                      ),
                                      false => Colors.transparent,
                                    },
                                    border: switch (state.selectedCalendarEventTypes.contains(
                                      CalendarEventType.values.elementAt(
                                        index,
                                      ),
                                    )) {
                                      true => null,
                                      false => Border.all(
                                        color: const Color(
                                          0xFFB0B0B0,
                                        ),
                                        width: converter.h(
                                          1,
                                        ),
                                      ),
                                    },
                                    child: Center(
                                      child: Text(
                                        CalendarEventType.values.elementAt(
                                          index,
                                        ).label,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          // height: 1.5,
                                          fontSize: converter.h(
                                            14,
                                          ),
                                          color: switch (
                                          state.selectedCalendarEventTypes.contains(
                                            CalendarEventType.values.elementAt(
                                              index,
                                            ),
                                          )) {
                                            true => Colors.white,
                                            false => const Color(
                                              0xFF3D3D3D,
                                            ),
                                          },
                                          fontWeight: FontWeightAlias.medium,
                                          letterSpacing: converter.lt(
                                            fontSize: 14,
                                            percent: -2,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                              itemCount: CalendarEventType.values.length,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  BlocBuilder<CalendarBloc, CalendarState>(
                    buildWhen: (previous, current) => (previous.events != current.events),
                    builder: (context, state) => TableCalendar<Event>(
                      focusedDay: state.dateTime,
                      eventLoader: (day) => state.events[day] ?? [],
                      firstDay: DateTime.utc(
                        2023,
                        1,
                        1,
                      ),
                      lastDay: DateTime.utc(
                        2025,
                        12,
                        31,
                      ),
                      onPageChanged: (focusedDay) => context.read<CalendarBloc>().add(
                        CalendarEvent.onPageChanged(
                          value: focusedDay,
                        ),
                      ),
                      locale: 'ko_KR',
                      headerVisible: false,
                      daysOfWeekHeight: App.instance.overlay.relativeScreenHeight(
                        34,
                      ),
                      rowHeight: App.instance.overlay.relativeScreenHeight(
                        80,
                      ),
                      headerStyle: const HeaderStyle(
                        formatButtonVisible: false,
                      ),
                      daysOfWeekStyle: DaysOfWeekStyle(
                        weekendStyle: TextStyle(
                          // height: 1.5,
                          fontSize: App.instance.overlay.relativeScreenHeight(
                            13,
                          ),
                          color: const Color(
                            0xFF111111,
                          ),
                          fontWeight: FontWeightAlias.regular,
                          letterSpacing: 0,
                        ),
                        weekdayStyle: TextStyle(
                          // height: 1.5,
                          fontSize: App.instance.overlay.relativeScreenHeight(
                            13,
                          ),
                          color: const Color(
                            0xFF111111,
                          ),
                          fontWeight: FontWeightAlias.regular,
                          letterSpacing: 0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.symmetric(
                            horizontal: BorderSide(
                              color: const Color(
                                0xFFE5E5EC,
                              ),
                              style: BorderStyle.solid,
                              strokeAlign: BorderSide.strokeAlignInside,
                              width: App.instance.overlay.relativeScreenHeight(
                                1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      onDaySelected: (selectedDay, focusedDay) async {

                        if ((state.events[selectedDay] ?? []).isEmpty) {

                          await CalendarEditSheet.show(
                            context: context,
                            dateTime: selectedDay,
                          ).then(
                            (value) {

                              if ((value != null) &&
                                  (value is String)) {

                                if (context.mounted) {

                                  context.read<CalendarBloc>().add(
                                    CalendarEvent.addEvent(
                                      dateTime: selectedDay,
                                      content: value,
                                    ),
                                  );
                                }
                              }
                            },
                          );
                        } else {

                          final Event event = state.events[selectedDay]!.first;

                          await CalendarDialog.show(
                            context: context,
                            dateTime: event.dateTime,
                            content: event.content,
                          ).then(
                            (value) async {

                              if (value == true) {

                                if (context.mounted) {

                                  await CalendarEditSheet.show(
                                    context: context,
                                    dateTime: event.dateTime,
                                    content: event.content,
                                  ).then(
                                        (value) {

                                      if ((value != null) &&
                                          (value is String)) {

                                        if (context.mounted) {

                                          context.read<CalendarBloc>().add(
                                            CalendarEvent.editEvent(
                                              dateTime: event.dateTime,
                                              content: value,
                                            ),
                                          );
                                        }
                                      }
                                    },
                                  );
                                }
                              }
                            },
                          );
                        }
                      },
                      calendarStyle: CalendarStyle(
                          markersAutoAligned: true,
                          isTodayHighlighted: false,
                          cellAlignment: Alignment.topCenter,
                          markersAlignment: Alignment.topCenter,
                          rowDecoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: const Color(
                                  0xFFE5E5EC,
                                ),
                                style: BorderStyle.solid,
                                strokeAlign: BorderSide.strokeAlignInside,
                                width: App.instance.overlay.relativeScreenHeight(
                                  1,
                                ),
                              ),
                            ),
                          )
                      ),
                      calendarBuilders: const CalendarBuilders(
                      ),
                    ),
                  )
                ],
              ),
            ),
            backgroundColor: Colors.white,
          ),
        ),
      );
}
