part of 'sign_bloc.dart';

@freezed
class SignEvent with _$SignEvent {
  const factory SignEvent.initialize({
    required BuildContext context,
  }) = _initialize;
}
