import 'package:app/app/app.dart';
import 'package:app/model/local/practice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'practice_analytics_event.dart';
part 'practice_analytics_state.dart';
part 'practice_analytics_bloc.freezed.dart';

class PracticeAnalyticsBloc
    extends Bloc<PracticeAnalyticsEvent, PracticeAnalyticsState> {
  PracticeAnalyticsBloc()
      : super(
          const PracticeAnalyticsState(),
        ) {
    on<PracticeAnalyticsEvent>((event, emit) async {
      await event.map(
        setMode: (event) async {},
      );
    });
  }
}
