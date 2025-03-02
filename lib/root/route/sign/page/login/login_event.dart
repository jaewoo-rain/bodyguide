part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginInWithGoogle({
    required BuildContext context,
  }) = _loginInWithGoogle;
  const factory LoginEvent.loginInWithKakao({
    required BuildContext context,
  }) = _loginInWithKakao;

// const factory LoginEvent.loginInWithApple() = _loginInWithApple;
}
