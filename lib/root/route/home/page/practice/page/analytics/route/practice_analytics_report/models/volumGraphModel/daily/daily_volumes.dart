import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_volumes.freezed.dart';
part 'daily_volumes.g.dart';

@freezed
class DailyVolumes with _$DailyVolumes {
  const factory DailyVolumes({
    required int id,
    required DateTime date,
    required double volume,
  }) = _DailyVolumes;

  factory DailyVolumes.fromJson(Map<String, dynamic> json) =>
      _$DailyVolumesFromJson(json);
}
