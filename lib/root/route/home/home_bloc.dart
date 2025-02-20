import 'package:app/app/misc/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:preload_page_view/preload_page_view.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : pageController = PreloadPageController(),
        super(const HomeState()) {
    print('홈으로 이동');
    on<HomeEvent>((event, emit) async {
      await event.map(
        onPageChanged: (event) async {
          emit(
            state.copyWith(
              page: event.value,
            ),
          );
        },
      );
    });
  }

  final PreloadPageController pageController;
}
