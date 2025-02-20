part of 'sign_bloc.dart';

@freezed
class SignEvent with _$SignEvent {
  const factory SignEvent.initialize({
    required BuildContext context,
  }) = _initialize;

  const factory SignEvent.signInWithGoogle({
    required BuildContext context,
  }) = _signInWithGoogle;
  const factory SignEvent.signInWithKakao() = _signInWithKakao;

// const factory SignEvent.signInWithApple() = _signInWithApple;
}
