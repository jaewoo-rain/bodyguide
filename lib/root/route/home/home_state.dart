part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomePage.idle) HomePage page,
  }) = _HomeState;
}
