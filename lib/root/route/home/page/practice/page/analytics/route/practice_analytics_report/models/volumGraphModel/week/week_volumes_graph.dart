import 'package:app/root/route/home/page/practice/page/analytics/route/practice_analytics_report/models/volumGraphModel/week/week_volumes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'week_volumes_graph.freezed.dart';
part 'week_volumes_graph.g.dart';

@freezed
class WeekVolumeGraph with _$WeekVolumeGraph {
  const factory WeekVolumeGraph({
    required int currentPage,
    required int pageSize,
    required bool hasNext,
    // @AbilityItemMapConverter() required Map<String, WeekVolumes> ability,
    required List<WeekVolumes> volumes,
  }) = _WeekVolumeGraph;

  factory WeekVolumeGraph.fromJson(Map<String, dynamic> json) =>
      _$WeekVolumeGraphFromJson(json);
}
