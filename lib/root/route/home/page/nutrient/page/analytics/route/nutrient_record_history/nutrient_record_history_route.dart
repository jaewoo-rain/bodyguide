import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/root/route/home/page/nutrient/page/analytics/route/nutrient_record_history/nutrient_record_history_bloc.dart';
import 'package:app/root/route/home/page/nutrient/widget/nutrient_summary_tile.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:intl/intl.dart';

class NutrientRecordHistoryRoute extends StatelessWidget {
  const NutrientRecordHistoryRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => NutrientRecordHistoryBloc(),
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
                          '섭취기록 전체보기',
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
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(
                  App.instance.overlay.relativeScreenHeight(
                    60,
                  ),
                ),
                child: BysonAspectRatio(
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
                        child: BlocBuilder<NutrientRecordHistoryBloc,
                            NutrientRecordHistoryState>(
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
                              context.read<NutrientRecordHistoryBloc>().add(
                                    const NutrientRecordHistoryEvent
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
                              .read<NutrientRecordHistoryBloc>()
                              .add(
                                const NutrientRecordHistoryEvent.nextMonth(),
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
              ),
            ),
            backgroundColor: const Color(
              0xFFF1F1F5,
            ),
            body: BlocBuilder<NutrientRecordHistoryBloc,
                NutrientRecordHistoryState>(
              buildWhen: (previous, current) =>
                  (previous.dateTime != current.dateTime) ||
                  (previous.selectedPracticeCategory !=
                      current.selectedPracticeCategory),
              builder: (context, state) {
                final List<Widget> children =
                    switch (state.dateTime.month % 3) {
                  0 => [
                      NutrientSummaryTile(
                        dateTime: state.dateTime.copyWith(
                          day: 1,
                        ),
                      ),
                    ],
                  1 => [
                      NutrientSummaryTile(
                        dateTime: state.dateTime.copyWith(
                          day: 9,
                        ),
                      ),
                      NutrientSummaryTile(
                        dateTime: state.dateTime.copyWith(
                          day: 27,
                        ),
                      ),
                    ],
                  2 => [
                      NutrientSummaryTile(
                        dateTime: state.dateTime.copyWith(
                          day: 2,
                        ),
                      ),
                      NutrientSummaryTile(
                        dateTime: state.dateTime.copyWith(
                          day: 15,
                        ),
                      ),
                      NutrientSummaryTile(
                        dateTime: state.dateTime.copyWith(
                          day: 24,
                        ),
                      ),
                    ],
                  _ => [
                      NutrientSummaryTile(
                        dateTime: state.dateTime.copyWith(
                          day: 6,
                        ),
                      ),
                      NutrientSummaryTile(
                        dateTime: state.dateTime.copyWith(
                          day: 7,
                        ),
                      ),
                      NutrientSummaryTile(
                        dateTime: state.dateTime.copyWith(
                          day: 21,
                        ),
                      ),
                      NutrientSummaryTile(
                        dateTime: state.dateTime.copyWith(
                          day: 23,
                        ),
                      ),
                    ],
                }.toList();

                return ListView.separated(
                  padding: EdgeInsets.symmetric(
                    horizontal: App.instance.overlay.relativeScreenWidth(
                      20,
                    ),
                    vertical: App.instance.overlay.relativeScreenHeight(
                      24,
                    ),
                  ),
                  separatorBuilder: (context, index) => const BysonSeparator(
                    designWidth: designWidth - 40,
                    designHeight: 16,
                  ),
                  itemBuilder: (context, index) => children[index],
                  itemCount: children.length,
                );
              },
            ),
          ),
        ),
      );
}
