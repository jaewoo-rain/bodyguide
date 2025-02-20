part of 'sign_bloc.dart';

@freezed
class SignState with _$SignState {
  const factory SignState({
    @Default(false) bool initialized,
    @Default(false) bool isLoading,
    String? errorMessage,
    // 필요하다면 accessToken, refreshToken 필드 추가
  }) = _SignState;
}
