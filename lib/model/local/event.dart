import 'package:app/app/misc/enums.dart';
import 'package:app/model/converter/timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required DateTime dateTime,
    required String content,
  }) = _Event;

  factory Event.fromJson(Map<String, Object?> json) =>
      _$EventFromJson(json);

  const Event._();
}
