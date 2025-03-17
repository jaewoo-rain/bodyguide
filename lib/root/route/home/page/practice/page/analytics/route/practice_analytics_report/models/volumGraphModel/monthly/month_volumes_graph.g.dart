// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'month_volumes_graph.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonthVolumesGraphImpl _$$MonthVolumesGraphImplFromJson(
        Map<String, dynamic> json) =>
    _$MonthVolumesGraphImpl(
      currentPage: (json['currentPage'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      hasNext: json['hasNext'] as bool,
      volumes: (json['volumes'] as List<dynamic>)
          .map((e) => MonthVolumes.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MonthVolumesGraphImplToJson(
        _$MonthVolumesGraphImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'pageSize': instance.pageSize,
      'hasNext': instance.hasNext,
      'volumes': instance.volumes,
    };
