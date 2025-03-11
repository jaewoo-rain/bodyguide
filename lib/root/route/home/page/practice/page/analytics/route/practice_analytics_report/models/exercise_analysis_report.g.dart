// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_analysis_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseAnalysisReportImpl _$$ExerciseAnalysisReportImplFromJson(
        Map<String, dynamic> json) =>
    _$ExerciseAnalysisReportImpl(
      totalScore: (json['totalScore'] as num).toInt(),
      totalLevel: json['totalLevel'] as String,
      topPercent: (json['topPercent'] as num).toDouble(),
      ability: const AbilityItemMapConverter()
          .fromJson(json['ability'] as Map<String, dynamic>),
      weekMuscle: (json['weekMuscle'] as List<dynamic>)
          .map((e) => WeekMuscle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExerciseAnalysisReportImplToJson(
        _$ExerciseAnalysisReportImpl instance) =>
    <String, dynamic>{
      'totalScore': instance.totalScore,
      'totalLevel': instance.totalLevel,
      'topPercent': instance.topPercent,
      'ability': const AbilityItemMapConverter().toJson(instance.ability),
      'weekMuscle': instance.weekMuscle,
    };
