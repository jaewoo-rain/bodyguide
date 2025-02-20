// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseSetRequestImpl _$$ExerciseSetRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ExerciseSetRequestImpl(
      set: (json['set'] as num).toInt(),
      weight: (json['weight'] as num).toDouble(),
      reps: (json['reps'] as num).toInt(),
    );

Map<String, dynamic> _$$ExerciseSetRequestImplToJson(
        _$ExerciseSetRequestImpl instance) =>
    <String, dynamic>{
      'set': instance.set,
      'weight': instance.weight,
      'reps': instance.reps,
    };

_$ExerciseRecordRequestImpl _$$ExerciseRecordRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ExerciseRecordRequestImpl(
      exerciseId: (json['exerciseId'] as num).toInt(),
      sets: (json['sets'] as List<dynamic>)
          .map((e) => ExerciseSetRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExerciseRecordRequestImplToJson(
        _$ExerciseRecordRequestImpl instance) =>
    <String, dynamic>{
      'exerciseId': instance.exerciseId,
      'sets': instance.sets,
    };

_$ExerciseRecordGroupRequestImpl _$$ExerciseRecordGroupRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ExerciseRecordGroupRequestImpl(
      groupId: (json['groupId'] as num).toInt(),
      exerciseDate: DateTime.parse(json['exerciseDate'] as String),
      exercises: (json['exercises'] as List<dynamic>)
          .map((e) => ExerciseRecordRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExerciseRecordGroupRequestImplToJson(
        _$ExerciseRecordGroupRequestImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'exerciseDate': instance.exerciseDate.toIso8601String(),
      'exercises': instance.exercises,
    };
