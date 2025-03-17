// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'month_volumes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonthVolumesImpl _$$MonthVolumesImplFromJson(Map<String, dynamic> json) =>
    _$MonthVolumesImpl(
      id: (json['id'] as num).toInt(),
      year: (json['year'] as num).toInt(),
      month: (json['month'] as num).toInt(),
      volume: (json['volume'] as num).toDouble(),
    );

Map<String, dynamic> _$$MonthVolumesImplToJson(_$MonthVolumesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'year': instance.year,
      'month': instance.month,
      'volume': instance.volume,
    };
