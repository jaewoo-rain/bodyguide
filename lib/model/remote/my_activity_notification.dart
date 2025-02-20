import 'package:app/app/misc/enums.dart';
import 'package:app/model/converter/timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_activity_notification.freezed.dart';
part 'my_activity_notification.g.dart';

@freezed
class MyActivityNotification with _$MyActivityNotification {
  const factory MyActivityNotification({
    required bool read,
    required String title,
    required String subTitle,
    required DateTime createdAt,
  }) = _MyActivityNotification;

  factory MyActivityNotification.fromJson(Map<String, Object?> json) =>
      _$MyActivityNotificationFromJson(json);

  const MyActivityNotification._();
}
