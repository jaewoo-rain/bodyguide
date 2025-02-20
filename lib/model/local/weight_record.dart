import 'package:app/app/misc/enums.dart';
import 'package:app/model/converter/timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weight_record.freezed.dart';
part 'weight_record.g.dart';

@freezed
class WeightRecord with _$WeightRecord {
  const factory WeightRecord(
      {required double value,
      required DateTime date,
      required int historyId}) = _WeightRecord;

  factory WeightRecord.fromJson(Map<String, Object?> json) =>
      _$WeightRecordFromJson(json);

  const WeightRecord._();
}
