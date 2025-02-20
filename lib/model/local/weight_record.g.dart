// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeightRecordImpl _$$WeightRecordImplFromJson(Map<String, dynamic> json) =>
    _$WeightRecordImpl(
      value: (json['value'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      historyId: (json['historyId'] as num).toInt(),
    );

Map<String, dynamic> _$$WeightRecordImplToJson(_$WeightRecordImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'date': instance.date.toIso8601String(),
      'historyId': instance.historyId,
    };
