import 'package:app/app/misc/enums.dart';
import 'package:app/model/converter/timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'practice.freezed.dart';
part 'practice.g.dart';

@freezed
class Practice with _$Practice {
  const factory Practice({
    required String category,
    required String name,
    required int exerciseId,
    required int thresholdType,
  }) = _Practice;

  factory Practice.fromJson(Map<String, Object?> json) =>
      _$PracticeFromJson(json);

  const Practice._();
}
