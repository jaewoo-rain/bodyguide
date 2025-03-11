// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'big_three.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BigThreeImpl _$$BigThreeImplFromJson(Map<String, dynamic> json) =>
    _$BigThreeImpl(
      squatScore: (json['squatScore'] as num).toDouble(),
      squatWeight: (json['squatWeight'] as num).toDouble(),
      squatReps: (json['squatReps'] as num).toDouble(),
      squatUpdatedAt: DateTime.parse(json['squatUpdatedAt'] as String),
      deadLiftScore: (json['deadLiftScore'] as num).toDouble(),
      deadLiftWeight: (json['deadLiftWeight'] as num).toDouble(),
      deadLiftReps: (json['deadLiftReps'] as num).toDouble(),
      deadLiftUpdatedAt: DateTime.parse(json['deadLiftUpdatedAt'] as String),
      benchPressScore: (json['benchPressScore'] as num).toDouble(),
      benchPressWeight: (json['benchPressWeight'] as num).toDouble(),
      benchPressReps: (json['benchPressReps'] as num).toDouble(),
      benchPressUpdatedAt:
          DateTime.parse(json['benchPressUpdatedAt'] as String),
    );

Map<String, dynamic> _$$BigThreeImplToJson(_$BigThreeImpl instance) =>
    <String, dynamic>{
      'squatScore': instance.squatScore,
      'squatWeight': instance.squatWeight,
      'squatReps': instance.squatReps,
      'squatUpdatedAt': instance.squatUpdatedAt.toIso8601String(),
      'deadLiftScore': instance.deadLiftScore,
      'deadLiftWeight': instance.deadLiftWeight,
      'deadLiftReps': instance.deadLiftReps,
      'deadLiftUpdatedAt': instance.deadLiftUpdatedAt.toIso8601String(),
      'benchPressScore': instance.benchPressScore,
      'benchPressWeight': instance.benchPressWeight,
      'benchPressReps': instance.benchPressReps,
      'benchPressUpdatedAt': instance.benchPressUpdatedAt.toIso8601String(),
    };
