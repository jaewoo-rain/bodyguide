import 'package:freezed_annotation/freezed_annotation.dart';

import 'month_volumes.dart';

part 'month_volumes_graph.freezed.dart';
part 'month_volumes_graph.g.dart';

@freezed
class MonthVolumesGraph with _$MonthVolumesGraph {
  const factory MonthVolumesGraph({
    required int currentPage,
    required int pageSize,
    required bool hasNext,
    // @AbilityItemMapConverter() required Map<String, WeekVolumes> ability,
    required List<MonthVolumes> volumes,
  }) = _MonthVolumesGraph;

  factory MonthVolumesGraph.fromJson(Map<String, dynamic> json) =>
      _$MonthVolumesGraphFromJson(json);
}
