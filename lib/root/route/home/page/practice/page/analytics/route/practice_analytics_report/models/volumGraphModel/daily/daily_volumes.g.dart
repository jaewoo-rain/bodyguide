// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_volumes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyVolumesImpl _$$DailyVolumesImplFromJson(Map<String, dynamic> json) =>
    _$DailyVolumesImpl(
      id: (json['id'] as num).toInt(),
      year: (json['year'] as num).toInt(),
      day: (json['day'] as num).toInt(),
      volume: (json['volume'] as num).toDouble(),
    );

Map<String, dynamic> _$$DailyVolumesImplToJson(_$DailyVolumesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'year': instance.year,
      'day': instance.day,
      'volume': instance.volume,
    };
