part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initialize({
    required BuildContext context,
  }) = _initialize;

  const factory HomeEvent.onPageChanged({
    required HomePage value,
  }) = _onPageChanged;
}
