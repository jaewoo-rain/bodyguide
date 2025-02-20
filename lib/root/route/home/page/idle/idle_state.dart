part of 'idle_bloc.dart';

@freezed
class IdleState with _$IdleState {
  const factory IdleState(
      {@Default(false) bool mock,
      @Default(0) double weight,
      @Default(0) double volume}) = _IdleState;
}
