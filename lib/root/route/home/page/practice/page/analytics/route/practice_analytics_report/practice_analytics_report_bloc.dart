import 'package:app/app/app.dart';
import 'package:app/app/constant/system.dart';
import 'package:app/model/local/practice.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
    on<PracticeAnalyticsReportEvent>((event, emit) async {
      await event.map(
        initialize: (event) async {
          await Future.delayed(
            const Duration(
              seconds: 3,
            ),
          ).then(
                (value) async =>
            await pageController.nextPage(
              duration: defaultAnimationDuration,
              curve: defaultAnimationCurve,
            ),
          );
          },
      );
    });
  }

  final PageController pageController;
}
