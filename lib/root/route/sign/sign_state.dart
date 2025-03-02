part of 'sign_bloc.dart';

@freezed
class SignState with _$SignState {
  const factory SignState({
    @Default(false) bool initialized,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _SignState;
}
