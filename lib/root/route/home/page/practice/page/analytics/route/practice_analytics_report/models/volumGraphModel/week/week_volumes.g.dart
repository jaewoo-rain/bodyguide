// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'week_volumes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeekVolumesImpl _$$WeekVolumesImplFromJson(Map<String, dynamic> json) =>
    _$WeekVolumesImpl(
      id: (json['id'] as num).toInt(),
      year: (json['year'] as num).toInt(),
      week: (json['week'] as num).toInt(),
      volume: (json['volume'] as num).toDouble(),
    );

Map<String, dynamic> _$$WeekVolumesImplToJson(_$WeekVolumesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'year': instance.year,
      'week': instance.week,
      'volume': instance.volume,
    };
