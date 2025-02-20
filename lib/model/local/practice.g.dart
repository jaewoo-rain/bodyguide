// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PracticeImpl _$$PracticeImplFromJson(Map<String, dynamic> json) =>
    _$PracticeImpl(
      category: json['category'] as String,
      name: json['name'] as String,
      exerciseId: (json['exerciseId'] as num).toInt(),
      thresholdType: (json['thresholdType'] as num).toInt(),
    );

Map<String, dynamic> _$$PracticeImplToJson(_$PracticeImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'name': instance.name,
      'exerciseId': instance.exerciseId,
      'thresholdType': instance.thresholdType,
    };
