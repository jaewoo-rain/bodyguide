part of 'onboard_bloc.dart';

@freezed
class OnboardState with _$OnboardState {
  const factory OnboardState({
    @Default(OnboardPage.nickName) OnboardPage page,
    @Default('') String nickName,
    @Default(null) Gender? gender,
    @Default(null) int? year,
    @Default(null) int? month,
    @Default(null) int? day,
    @Default('') String height,
    @Default('') String weight,
    @Default('') String inflowSource,
  }) = _OnboardState;
}
