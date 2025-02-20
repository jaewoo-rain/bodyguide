import 'package:app/app/misc/enums.dart';
import 'package:app/model/converter/timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_guide_notification.freezed.dart';
part 'body_guide_notification.g.dart';

@freezed
class BodyGuideNotification with _$BodyGuideNotification {
  const factory BodyGuideNotification({
    required bool read,
    required String title,
    required String subTitle,
    required DateTime createdAt,
  }) = _BodyGuideNotification;

  factory BodyGuideNotification.fromJson(Map<String, Object?> json) =>
      _$BodyGuideNotificationFromJson(json);

  const BodyGuideNotification._();
}
