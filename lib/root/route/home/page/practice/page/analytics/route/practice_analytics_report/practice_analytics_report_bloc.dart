import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/model/local/practice.dart';
import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/models/big_three.dart';
import 'package:app/root/route/system/api_post_request_manager.dart';
import 'package:app/root/route/system/token_manager.dart';
import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../../../app/core/navigator_core.dart';
import 'models/exercise_analysis_report.dart';

part 'practice_analytics_report_event.dart';
part 'practice_analytics_report_state.dart';
part 'practice_analytics_report_bloc.freezed.dart';

class PracticeAnalyticsReportBloc
    extends Bloc<PracticeAnalyticsReportEvent, PracticeAnalyticsReportState> {
  PracticeAnalyticsReportBloc()
      : pageController = PageController(),
        super(
          const PracticeAnalyticsReportState(),
        ) {
    loadData();
    on<PracticeAnalyticsReportEvent>((event, emit) async {
      await event.map(
        initialize: (event) async {
          await Future.delayed(
            const Duration(
              seconds: 1,
            ),
          ).then(
            (value) async => await pageController.nextPage(
              duration: defaultAnimationDuration,
              curve: defaultAnimationCurve,
            ),
          );
        },
      );
    });
  }

  Future<void> loadData() async {
    try {
      final apiManager =
          ApiRequestManager(dio: Dio(), tokenManager: TokenManager());
      print("운동report 데이터 불러오기");

      final results = await apiManager.multiGetRequest(
        paths: ['exercise/analysis/report', 'exercise/bigthree'],
        params: [{}, {}],
        failRoute: Routes.home.path,
      );

      if (results.containsKey('error')) {
        print("API 호출 실패: ${results['message']}");
      } else {
        debugPrint('운동report 불러오기: $results', wrapWidth: 1024);

        // 만약 results가 아래와 같이 구성되어 있다면,
        // { totalScore: 0, totalLevel: '입문자', topPercent: 100.0, ability: { ... }, weekMuscle: [...] }
        final report = ExerciseAnalysisReport.fromJson(
            results['exercise/analysis/report']);
        final bigThree = BigThree.fromJson(results['exercise/bigthree']);
        // bloc의 state 업데이트
        emit(state.copyWith(report: report));
        emit(state.copyWith(bigThree: bigThree));
      }
    } catch (e, stackTrace) {
      print('Error: $e');
    }
  }

  final PageController pageController;
}
