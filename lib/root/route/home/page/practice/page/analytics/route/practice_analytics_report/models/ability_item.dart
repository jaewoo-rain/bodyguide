import 'package:freezed_annotation/freezed_annotation.dart';

part 'ability_item.freezed.dart';
part 'ability_item.g.dart';

@freezed
class AbilityItem with _$AbilityItem {
  const factory AbilityItem({
    @Default(0) int exerId,
    @Default("") String muscleGroupType,
    @Default("") String thresholdType,
    @Default(0) double score,
    @Default("기본") String level,
    @Default(0) double strength,
    @Default(0) double average,
  }) = _AbilityItem;

  factory AbilityItem.fromJson(Map<String, dynamic> json) =>
      _$AbilityItemFromJson(json);
}
