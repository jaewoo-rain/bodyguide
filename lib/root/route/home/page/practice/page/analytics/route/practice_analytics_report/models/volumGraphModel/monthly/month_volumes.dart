import 'package:freezed_annotation/freezed_annotation.dart';

part 'month_volumes.freezed.dart';
part 'month_volumes.g.dart';

@freezed
class MonthVolumes with _$MonthVolumes {
  const factory MonthVolumes({
    required int id,
    required int year,
    required int month,
    required double volume,
  }) = _MonthVolumes;

  factory MonthVolumes.fromJson(Map<String, dynamic> json) =>
      _$MonthVolumesFromJson(json);
}
