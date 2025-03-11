import 'package:freezed_annotation/freezed_annotation.dart';

part 'week_muscle.freezed.dart';
part 'week_muscle.g.dart';

@freezed
class WeekMuscle with _$WeekMuscle {
  const factory WeekMuscle({
    required String strength,
    required List<String> details,
  }) = _WeekMuscle;

  factory WeekMuscle.fromJson(Map<String, dynamic> json) =>
      _$WeekMuscleFromJson(json);
}
