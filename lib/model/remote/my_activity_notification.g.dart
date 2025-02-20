// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_activity_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyActivityNotificationImpl _$$MyActivityNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$MyActivityNotificationImpl(
      read: json['read'] as bool,
      title: json['title'] as String,
      subTitle: json['subTitle'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$MyActivityNotificationImplToJson(
        _$MyActivityNotificationImpl instance) =>
    <String, dynamic>{
      'read': instance.read,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'createdAt': instance.createdAt.toIso8601String(),
    };
