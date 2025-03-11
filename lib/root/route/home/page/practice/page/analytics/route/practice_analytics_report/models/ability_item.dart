import 'package:freezed_annotation/freezed_annotation.dart';

part 'ability_item.freezed.dart';
part 'ability_item.g.dart';

@freezed
class AbilityItem with _$AbilityItem {
  const factory AbilityItem({
    required int exerId,
    required String muscleGroupType,
    required String thresholdType,
    required double score,
    required String level,
    required double strength,
    required double average,
  }) = _AbilityItem;

  factory AbilityItem.fromJson(Map<String, dynamic> json) =>
      _$AbilityItemFromJson(json);
}
