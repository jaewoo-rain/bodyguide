import 'package:freezed_annotation/freezed_annotation.dart';
import 'ability_item.dart';
import 'week_muscle.dart';
import 'ability_item_map_converter.dart';

part 'exercise_analysis_report.freezed.dart';
part 'exercise_analysis_report.g.dart';

@freezed
class ExerciseAnalysisReport with _$ExerciseAnalysisReport {
  const factory ExerciseAnalysisReport({
    required int totalScore,
    required String totalLevel,
    required double topPercent,
    @AbilityItemMapConverter() required Map<String, AbilityItem> ability,
    required List<WeekMuscle> weekMuscle,
  }) = _ExerciseAnalysisReport;

  factory ExerciseAnalysisReport.fromJson(Map<String, dynamic> json) =>
      _$ExerciseAnalysisReportFromJson(json);
}
