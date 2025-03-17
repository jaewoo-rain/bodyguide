import 'package:freezed_annotation/freezed_annotation.dart';

import 'daily_volumes.dart';

part 'daily_volumes_graph.freezed.dart';
part 'daily_volumes_graph.g.dart';

@freezed
class DailyVolumesGraph with _$DailyVolumesGraph {
  const factory DailyVolumesGraph({
    required int currentPage,
    required int pageSize,
    required bool hasNext,
    // @AbilityItemMapConverter() required Map<String, WeekVolumes> ability,
    required List<DailyVolumes> volumes,
  }) = _DailyVolumesGraph;

  factory DailyVolumesGraph.fromJson(Map<String, dynamic> json) =>
      _$DailyVolumesGraphFromJson(json);
}
