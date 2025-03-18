import 'package:freezed_annotation/freezed_annotation.dart';
import 'ability_item.dart';

class AbilityItemMapConverter
    implements JsonConverter<Map<String, AbilityItem>, Map<String, dynamic>?> {
  const AbilityItemMapConverter();

  @override
  Map<String, AbilityItem> fromJson(Map<String, dynamic>? json) {
    if (json == null) return {};
    return json.map(
      (key, value) {
        if (value == null) {
          // 만약 null인 경우 기본 AbilityItem을 넣거나, 혹은 아예 건너뛸 수도 있습니다.
          return MapEntry(key, const AbilityItem());
        }
        return MapEntry(
            key, AbilityItem.fromJson(value as Map<String, dynamic>));
      },
    );
  }

  @override
  Map<String, dynamic>? toJson(Map<String, AbilityItem> object) {
    return object.map((key, value) => MapEntry(key, value.toJson()));
  }
}
