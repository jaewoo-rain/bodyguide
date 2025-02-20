import 'package:app/app/app.dart';
import 'package:app/model/local/practice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrient_analytics_event.dart';
part 'nutrient_analytics_state.dart';
part 'nutrient_analytics_bloc.freezed.dart';

class NutrientAnalyticsBloc
    extends Bloc<NutrientAnalyticsEvent, NutrientAnalyticsState> {
  NutrientAnalyticsBloc()
      : super(
          const NutrientAnalyticsState(),
        ) {
    on<NutrientAnalyticsEvent>((event, emit) async {
      await event.map(
        setMode: (event) async {},
      );
    });
  }
}
