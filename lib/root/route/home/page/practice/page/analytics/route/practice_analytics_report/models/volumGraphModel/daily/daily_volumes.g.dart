// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_volumes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyVolumesImpl _$$DailyVolumesImplFromJson(Map<String, dynamic> json) =>
    _$DailyVolumesImpl(
      id: (json['id'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      volume: (json['volume'] as num).toDouble(),
    );

Map<String, dynamic> _$$DailyVolumesImplToJson(_$DailyVolumesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'volume': instance.volume,
    };
