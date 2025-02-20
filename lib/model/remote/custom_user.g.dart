// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomUserImpl _$$CustomUserImplFromJson(Map<String, dynamic> json) =>
    _$CustomUserImpl(
      documentId: json['documentId'] as String,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
      onboarded: json['onboarded'] as bool,
      uid: json['uid'] as String,
      providerId: json['providerId'] as String,
      baseInfo: json['baseInfo'] == null
          ? null
          : BaseInfo.fromJson(json['baseInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CustomUserImplToJson(_$CustomUserImpl instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'onboarded': instance.onboarded,
      'uid': instance.uid,
      'providerId': instance.providerId,
      'baseInfo': instance.baseInfo,
    };

_$BaseInfoImpl _$$BaseInfoImplFromJson(Map<String, dynamic> json) =>
    _$BaseInfoImpl(
      nickName: json['nickName'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      birth: const TimestampConverter().fromJson(json['birth'] as Timestamp),
      inflowRoute: json['inflowRoute'] as String,
    );

Map<String, dynamic> _$$BaseInfoImplToJson(_$BaseInfoImpl instance) =>
    <String, dynamic>{
      'nickName': instance.nickName,
      'gender': _$GenderEnumMap[instance.gender]!,
      'birth': const TimestampConverter().toJson(instance.birth),
      'inflowRoute': instance.inflowRoute,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};
