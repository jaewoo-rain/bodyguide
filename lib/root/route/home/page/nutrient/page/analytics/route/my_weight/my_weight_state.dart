part of 'my_weight_bloc.dart';

@freezed
class MyWeightState with _$MyWeightState {
  const factory MyWeightState({
    @Default('') String input,
    @Default([]) List<WeightRecord> records,
  }) = _MyWeightState;
}
