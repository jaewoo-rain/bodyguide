// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_volumes_graph.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyVolumesGraphImpl _$$DailyVolumesGraphImplFromJson(
        Map<String, dynamic> json) =>
    _$DailyVolumesGraphImpl(
      currentPage: (json['currentPage'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      hasNext: json['hasNext'] as bool,
      volumes: (json['volumes'] as List<dynamic>)
          .map((e) => DailyVolumes.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DailyVolumesGraphImplToJson(
        _$DailyVolumesGraphImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'pageSize': instance.pageSize,
      'hasNext': instance.hasNext,
      'volumes': instance.volumes,
    };
