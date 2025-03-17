import 'package:freezed_annotation/freezed_annotation.dart';

part 'week_volumes.freezed.dart';
part 'week_volumes.g.dart';

@freezed
class WeekVolumes with _$WeekVolumes {
  const factory WeekVolumes({
    required int id,
    required int year,
    required int week,
    required double volume,
  }) = _WeekVolumes;

  factory WeekVolumes.fromJson(Map<String, dynamic> json) =>
      _$WeekVolumesFromJson(json);
}
