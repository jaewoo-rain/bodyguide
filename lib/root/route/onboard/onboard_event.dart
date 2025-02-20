part of 'onboard_bloc.dart';

@freezed
class OnboardEvent with _$OnboardEvent {
  const factory OnboardEvent.onPageChanged({
    required OnboardPage value,
  }) = _onPageChanged;

  const factory OnboardEvent.loadData() = _loadData;

  const factory OnboardEvent.onNickNameChanged({
    required String value,
  }) = _onNickNameChanged;
  const factory OnboardEvent.onGenderChanged({
    required Gender value,
  }) = _onGenderChanged;
  const factory OnboardEvent.onYearChanged({
    required String value,
  }) = _onYearChanged;
  const factory OnboardEvent.onMonthChanged({
    required String value,
  }) = _onMonthChanged;
  const factory OnboardEvent.onDayChanged({
    required String value,
  }) = _onDayChanged;
  const factory OnboardEvent.onHeightChanged({
    required String value,
  }) = _onHeightChanged;
  const factory OnboardEvent.onWeightChanged({
    required String value,
  }) = _onWeightChanged;

  const factory OnboardEvent.onInflowRoutePressed({
    required String value,
  }) = _onInflowRoutePressed;

  const factory OnboardEvent.submit() = _submit;
}
