import 'package:app/app/app.dart';
import 'package:app/model/local/practice.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommendation_event.dart';
part 'recommendation_state.dart';
part 'recommendation_bloc.freezed.dart';

class RecommendationBloc
    extends Bloc<RecommendationEvent, RecommendationState> {
  RecommendationBloc()
      : pageController = PageController(),
        super(
          const RecommendationState(),
        ) {
    on<RecommendationEvent>((event, emit) async {
      await event.map(
        toggleGoal: (event) async {
          if (state.goals.contains(event.value)) {
            emit(
              state.copyWith(
                goals: Set.of(
                  state.goals,
                )..remove(
                    event.value,
                  ),
              ),
            );
          } else {
            emit(
              state.copyWith(
                goals: Set.of(
                  state.goals,
                )..add(
                    event.value,
                  ),
              ),
            );
          }
        },
      );
    });
  }

  final PageController pageController;
}
