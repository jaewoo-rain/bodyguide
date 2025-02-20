// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_guide_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BodyGuideNotificationImpl _$$BodyGuideNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$BodyGuideNotificationImpl(
      read: json['read'] as bool,
      title: json['title'] as String,
      subTitle: json['subTitle'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$BodyGuideNotificationImplToJson(
        _$BodyGuideNotificationImpl instance) =>
    <String, dynamic>{
      'read': instance.read,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'createdAt': instance.createdAt.toIso8601String(),
    };
