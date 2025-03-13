import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/app/constant/values.dart';
import 'package:app/app/core/navigator_core.dart';
import 'package:app/model/local/practice.dart';
import 'package:app/root/route/home/page/practice/page/history/practice_history_bloc.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_do/practice_do_bloc.dart';
import 'package:app/root/route/home/page/practice/page/history/route/practice_do/practice_do_route.dart';
import 'package:app/root/route/home/page/practice/widget/summary_tile.dart';
import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
import 'package:byson_cupertino_button/byson_cupertino_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class PracticeHistoryPage extends StatelessWidget {
  const PracticeHistoryPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => PracticeHistoryBloc()
          ..add(
            const PracticeHistoryEvent.loadPracticeRecord(),
          ),
        child: Builder(builder: (context) {
          return Scaffold(
            backgroundColor: Colors.transparent,
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
                      Center(
                        child: Text(
                          '운동기록',
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
                            letterSpacing: converter.lt(
                              fontSize: 20,
                              percent: -2,
                            ),
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        top: 0,
                        end: converter.w(
                          60 - 8,
                        ),
                        bottom: 0,
                        width: converter.h(
                          8 + 24 + 8,
                        ),
                        child: BysonCupertinoButton.solid(
                          onPressed: () => App.instance.navigator.push(
                            Routes.notification.path,
                          ),
                          child: Center(
                            child: Icon(
                              IconsaxPlusLinear.notification,
                              color: const Color(
                                0xFF3D5DD3,
                              ),
                              size: converter.h(
                                24,
                              ),
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
                            Routes.calendar.path,
                          ),
                          child: Center(
                            child: Icon(
                              IconsaxPlusLinear.calendar,
                              color: const Color(
                                0xFF3D5DD3,
                              ),
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
            body: Column(
              children: [
                BysonAspectRatio.padding(
                  designWidth: designWidth,
                  designHeight: 97,
                  designPadding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 32,
                    bottom: 16,
                  ),
                  builder: (converter) => Stack(
                    children: [
                      PositionedDirectional(
                        top: 0,
                        start: 0,
                        height: converter.h(
                          24,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '나의 운동 기록',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              height: 1.2,
                              fontSize: converter.h(
                                20,
                              ),
                              color: const Color(
                                0xFF111111,
                              ),
                              fontWeight: FontWeightAlias.medium,
                              letterSpacing: converter.lt(
                                fontSize: 20,
                                percent: -2,
                              ),
                            ),
                          ),
                        ),
                      ),
                      PositionedDirectional(
                        bottom: 0,
                        start: 0,
                        height: converter.h(
                          21,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '최근 7일 간의 운동 기록입니다.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              height: 1.5,
                              fontSize: converter.h(
                                14,
                              ),
                              color: const Color(
                                0xFF888888,
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
                      PositionedDirectional(
                        bottom: 0,
                        end: 0,
                        height: converter.h(
                          18,
                        ),
                        child: BysonCupertinoButton.solid(
                          onPressed: () => App.instance.navigator.push(
                            Routes.practiceRecordHistory.path,
                          ),
                          minSize: 0,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '전체보기',
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
                Expanded(
                  child: BlocBuilder<PracticeHistoryBloc, PracticeHistoryState>(
                      builder: (context, state) {
                    if (state.recordGroupList.isEmpty) {
                      return FutureBuilder(
                        future:
                            Future.delayed(const Duration(seconds: 2)), // 3초 대기
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
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
                                ],
                              ),
                            );
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

                    final List<Widget> children = [];

                    for (var group in state.recordGroupList) {
                      // 날짜 구분
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
                        practice.add(matchedExercise!); // 운동 이름 매핑
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
                      print('prevBestReps:! ${prevBestReps}');
                      children.add(SummaryTile(
                        dateTime: group.exerciseDate,
                        totalSet: totalSet,
                        totalVolume: totalVolume,
                        practiceList: practice,
                        practiceSet: resultSets,
                        prevBestWeights: prevBestWeights,
                        prevBestReps: prevBestReps,
                      ));
                    }

                    return RefreshIndicator(
                      onRefresh: () async {
                        // 여기에 새로고침 시 실행할 로직 추가
                        context
                            .read<PracticeHistoryBloc>()
                            .add(PracticeHistoryEvent.refresh());
                        await Future.delayed(const Duration(seconds: 2));
                      },
                      child: ListView.separated(
                        padding: EdgeInsets.symmetric(
                          horizontal: App.instance.overlay.relativeScreenWidth(
                            20,
                          ),
                        ),
                        separatorBuilder: (context, index) =>
                            const BysonSeparator(
                          designWidth: designWidth - 40,
                          designHeight: 16,
                        ),
                        itemBuilder: (context, index) => children[index],
                        itemCount: children.length,
                      ),
                    );
                  }),
                ),
              ],
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
                  onPressed: () => App.instance.navigator
                      .push(
                    Routes.practiceRecord.path,
                  )
                      .then(
                    (value) {
                      if ((value != null) && (value is Set<Practice>)) {
                        // App.instance.navigator.push(
                        //   Routes.practiceDo.path,
                        //   extra: {
                        //     'practices': value.toList(),
                        //     'practiceHistoryBloc':
                        //         context.read<PracticeHistoryBloc>(),
                        //   },
                        // );
                        App.instance.navigator.push(
                          Routes.practiceDo.path,
                          extra: {
                            'practices': value.toList(),
                            'practiceHistoryBloc':
                                context.read<PracticeHistoryBloc>(),
                          },
                        );

                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (_) => PracticeDoRoute(
                        //         practices: value.toList(),
                        //         practiceHistoryBloc:
                        //             context.read<PracticeHistoryBloc>(),
                        //       ),
                        //     ));
                      }
                    },
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
                      '운동 기록하기',
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
          );
        }),
      );
}
