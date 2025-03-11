import 'package:freezed_annotation/freezed_annotation.dart';
part 'big_three.freezed.dart';
part 'big_three.g.dart';

@freezed
class BigThree with _$BigThree {
  const factory BigThree({
    required double squatScore,
    required double squatWeight,
    required double squatReps,
    required DateTime squatUpdatedAt,
    required double deadLiftScore,
    required double deadLiftWeight,
    required double deadLiftReps,
    required DateTime deadLiftUpdatedAt,
    required double benchPressScore,
    required double benchPressWeight,
    required double benchPressReps,
    required DateTime benchPressUpdatedAt,
  }) = _BigThree;

  factory BigThree.fromJson(Map<String, dynamic> json) =>
      _$BigThreeFromJson(json);
}
