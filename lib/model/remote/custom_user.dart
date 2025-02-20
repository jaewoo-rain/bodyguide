import 'package:app/app/misc/enums.dart';
import 'package:app/model/converter/timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_user.freezed.dart';
part 'custom_user.g.dart';

@freezed
class CustomUser with _$CustomUser {
  const factory CustomUser({
    required String documentId,
    @TimestampConverter() required DateTime createdAt,
    required bool onboarded,
    required String uid,
    required String providerId,
    required BaseInfo? baseInfo,
  }) = _CustomUser;

  factory CustomUser.fromJson(Map<String, Object?> json) =>
      _$CustomUserFromJson(json);

  factory CustomUser.fromFirstore(
          DocumentSnapshot<Map<String, dynamic>> snapshot,
          SnapshotOptions? options) =>
      CustomUser.fromJson({
        'documentId': snapshot.id,
        ...(snapshot.data() as Map<String, dynamic>),
      });

  static Map<String, Object?> toFirestore(
          CustomUser object, SetOptions? options) =>
      object.toJson();

  const CustomUser._();
}

@freezed
class BaseInfo with _$BaseInfo {
  const factory BaseInfo({
    required String nickName,
    required Gender gender,
    @TimestampConverter() required DateTime birth,
    required String inflowRoute,
  }) = _BaseInfo;

  factory BaseInfo.fromJson(Map<String, Object?> json) =>
      _$BaseInfoFromJson(json);
}
