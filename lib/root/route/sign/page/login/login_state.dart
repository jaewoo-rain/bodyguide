part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool initialized,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _LoginState;
}
