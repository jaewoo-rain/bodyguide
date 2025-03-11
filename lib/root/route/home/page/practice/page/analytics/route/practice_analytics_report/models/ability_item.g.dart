// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AbilityItemImpl _$$AbilityItemImplFromJson(Map<String, dynamic> json) =>
    _$AbilityItemImpl(
      exerId: (json['exerId'] as num).toInt(),
      muscleGroupType: json['muscleGroupType'] as String,
      thresholdType: json['thresholdType'] as String,
      score: (json['score'] as num).toDouble(),
      level: json['level'] as String,
      strength: (json['strength'] as num).toDouble(),
      average: (json['average'] as num).toDouble(),
    );

Map<String, dynamic> _$$AbilityItemImplToJson(_$AbilityItemImpl instance) =>
    <String, dynamic>{
      'exerId': instance.exerId,
      'muscleGroupType': instance.muscleGroupType,
      'thresholdType': instance.thresholdType,
      'score': instance.score,
      'level': instance.level,
      'strength': instance.strength,
      'average': instance.average,
    };
