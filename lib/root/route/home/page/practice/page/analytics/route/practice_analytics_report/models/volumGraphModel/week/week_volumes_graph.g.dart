// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'week_volumes_graph.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeekVolumeGraphImpl _$$WeekVolumeGraphImplFromJson(
        Map<String, dynamic> json) =>
    _$WeekVolumeGraphImpl(
      currentPage: (json['currentPage'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      hasNext: json['hasNext'] as bool,
      volumes: (json['volumes'] as List<dynamic>)
          .map((e) => WeekVolumes.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeekVolumeGraphImplToJson(
        _$WeekVolumeGraphImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'pageSize': instance.pageSize,
      'hasNext': instance.hasNext,
      'volumes': instance.volumes,
    };
