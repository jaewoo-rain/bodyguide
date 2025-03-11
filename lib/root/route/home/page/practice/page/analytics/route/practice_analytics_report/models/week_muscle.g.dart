// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'week_muscle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeekMuscleImpl _$$WeekMuscleImplFromJson(Map<String, dynamic> json) =>
    _$WeekMuscleImpl(
      strength: json['strength'] as String,
      details:
          (json['details'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$WeekMuscleImplToJson(_$WeekMuscleImpl instance) =>
    <String, dynamic>{
      'strength': instance.strength,
      'details': instance.details,
    };
