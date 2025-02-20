import 'package:app/app/app.dart';
import 'package:app/app/asset/assets.gen.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/constant/values.dart';
import 'package:app/model/local/practice.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_do/practice_do_bloc.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_history/practice_record_history_bloc.dart';
import 'package:app/root/route/home/page/practice/widget/summary_tile.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:byson_switcher/byson_switcher.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class PracticeRecordHistoryRoute extends StatelessWidget {
  const PracticeRecordHistoryRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => PracticeRecordHistoryBloc(),
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
                          '운동기록 전체보기',
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
                    142,
                  ),
                ),
                child: BysonAspectRatio(
                  designWidth: designWidth,
                  designHeight: 142,
                  builder: (converter) => Stack(
                    children: [
                      PositionedDirectional(
                        top: 0,
                        start: 0,
                        end: 0,
                        height: converter.h(
                          60,
                        ),
                        child: BlocBuilder<PracticeRecordHistoryBloc,
                                PracticeRecordHistoryState>(
                            //     buildWhen: (previous, current) {
                            //   if (current.recordGroupList.isEmpty ||
                            //       previous.recordGroupList.isEmpty) {
                            //     return true; // 리스트가 비어 있으면 빌드
                            //   }
                            //   return previous.recordGroupList[0].exerciseDate !=
                            //       current.recordGroupList[0].exerciseDate;
                            // },
                            builder: (context, state) {
                          return Center(
                            child: Text(
                              DateFormat(
                                'yyyy년 MM월',
                              ).format(
                                state.currentTime!,
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
                          );
                        }),
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
                              context.read<PracticeRecordHistoryBloc>().add(
                                    const PracticeRecordHistoryEvent
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
                              .read<PracticeRecordHistoryBloc>()
                              .add(
                                const PracticeRecordHistoryEvent.nextMonth(),
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
                      PositionedDirectional(
                        bottom: 0,
                        start: 0,
                        end: 0,
                        height: converter.h(
                          81,
                        ),
                        child: Container(
                          color: const Color(
                            0xFFF1F1F5,
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        bottom: converter.h(
                          20,
                        ),
                        start: 0,
                        end: 0,
                        height: converter.h(
                          41,
                        ),
                        child: BlocBuilder<PracticeRecordHistoryBloc,
                            PracticeRecordHistoryState>(
                          buildWhen: (previous, current) =>
                              (previous.selectedPracticeCategory !=
                                  current.selectedPracticeCategory),
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
                                  context.read<PracticeRecordHistoryBloc>().add(
                                        PracticeRecordHistoryEvent
                                            .togglePracticeCategory(
                                          value: practices.keys.elementAt(
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
                              color: switch (state.selectedPracticeCategory ==
                                  practices.keys.elementAt(index)) {
                                true => const Color(
                                    0xFF3D5DD3,
                                  ),
                                false => Colors.transparent,
                              },
                              border: switch (state.selectedPracticeCategory ==
                                  practices.keys.elementAt(index)) {
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
                                  practices.keys.elementAt(
                                    index,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: converter.h(
                                      14,
                                    ),
                                    color: switch (
                                        state.selectedPracticeCategory ==
                                            practices.keys.elementAt(index)) {
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
                            itemCount: practices.keys.length,
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
            body: BlocBuilder<PracticeRecordHistoryBloc,
                PracticeRecordHistoryState>(
              // buildWhen: (previous, current) {
              //   return (previous.recordGroupList[0].exerciseDate !=
              //           current.recordGroupList[0].exerciseDate) ||
              //       (previous.selectedPracticeCategory !=
              //           current.selectedPracticeCategory);
              // },
              builder: (context, state) {
                if (state.recordGroupList.isEmpty) {
                  return FutureBuilder(
                    future: Future.delayed(const Duration(seconds: 2)), // 3초 대기
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        // 로딩 화면
                        return BysonAspectRatio(
                          designWidth: designWidth,
                          designHeight: 300,
                          builder: (converter) => Stack(
                            children: [
                              PositionedDirectional(
                                top: 80,
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
                                  '운동 정보를\n가져오고 있습니다.',
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
                        return BysonAspectRatio(
                          designWidth: designWidth,
                          designHeight: 300,
                          builder: (converter) => Stack(
                            children: [
                              PositionedDirectional(
                                top: 120,
                                start: converter.hcx(
                                  180,
                                ),
                                width: converter.w(
                                  500,
                                ),
                                height: converter.h(
                                  100,
                                ),
                                child: Text(
                                  '운동기록이 없습니다',
                                  textAlign: TextAlign.start,
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
                              // PositionedDirectional(
                              //   top: 0,
                              //   start: 0,
                              //   width: converter.w(
                              //     30 + 28,
                              //   ),
                              //   height: converter.h(
                              //     60,
                              //   ),
                              //   child: BysonCupertinoButton.solid(
                              //     onPressed: (){},
                              //     alignment: Alignment.centerRight,
                              //     child: Text('data'),
                              //   ),
                              // ),
                            ],
                          ),
                        );

                        // 3초 후 데이터 없음 화면
                        // return Center(
                        //   child: Text(
                        //     '운동 기록 없음',
                        //     textAlign: TextAlign.center,
                        //     style: TextStyle(
                        //       height: 1.2,
                        //       fontSize:
                        //           App.instance.overlay.relativeScreenHeight(24),
                        //       color: const Color(0xFF5D5D5D),
                        //       fontWeight: FontWeightAlias.semiBold,
                        //       letterSpacing:
                        //           App.instance.overlay.relativeScreenWidth(-2),
                        //     ),
                        //   ),
                        // );
                      }
                    },
                  );
                }

                Practice? findExerciseById(int exerciseId) {
                  for (var entry in practices.entries) {
                    for (var practice in entry.value) {
                      if (practice.exerciseId == exerciseId) {
                        return practice;
                      }
                    }
                  }
                  return null;
                }

                final recordGroupLists = state.recordGroupList as List;
                List<Practice?> practiceList = [];
                for (int index = 0; index < recordGroupLists.length; index++) {
                  final group = recordGroupLists[index];
                  final exercises = group.exercises;
                  for (var exercise in exercises) {
                    final exerciseId = exercise.exerciseId;
                    final matchedExercise = findExerciseById(exerciseId);
                    // print('그루핑 : $matchedExercise');
                    practiceList.add(matchedExercise);
                  }
                }
                for (var re in practiceList) {
                  // print(re?.name);
                  // print(re);
                }

                final List<Widget> children = [];

                for (var group in state.recordGroupList) {
                  // 저장 횟수 구분
                  print('group전체 : $group');
                  double totalVolume = 0.0;
                  int totalSet = 0;
                  List<Practice> practice = [];
                  List<PracticeSet> practiceSet = [];
                  List<List<PracticeSet>> resultSets = [];
                  double prevBestWeight = 0.0;
                  int prevBestRep = 0;
                  List<double> prevBestWeights = [];
                  List<int> prevBestReps = [];

                  for (var exercise in group.exercises) {
                    // 운동 종류 구분
                    prevBestWeight = exercise.prevBestWeight;
                    prevBestRep = exercise.prevBestReps;
                    practiceSet = [];
                    final matchedExercise =
                        findExerciseById(exercise.exerciseId);
                    practice.add(matchedExercise!);
                    for (var set in exercise.sets) {
                      // 운동 세트 구분
                      totalVolume += set.weight * set.reps;
                      practiceSet.add(PracticeSet(
                          weight: set.weight.toString(),
                          count: set.reps.toString()));
                    }
                    resultSets.add(practiceSet);
                    totalSet += exercise.sets.length;
                    prevBestWeights.add(prevBestWeight);
                    prevBestReps.add(prevBestRep);
                  }

                  children.add(
                    SummaryTile(
                        practiceList: practice,
                        dateTime: group.exerciseDate,
                        totalSet: totalSet,
                        totalVolume: totalVolume,
                        practiceSet: resultSets,
                        prevBestWeights: prevBestWeights,
                        prevBestReps: prevBestReps),
                  );
                  // print(practice);
                }

                // }

                return ListView.separated(
                  padding: EdgeInsets.symmetric(
                    horizontal: App.instance.overlay.relativeScreenWidth(
                      20,
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
