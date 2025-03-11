import 'package:freezed_annotation/freezed_annotation.dart';
import 'ability_item.dart';

class AbilityItemMapConverter
    implements JsonConverter<Map<String, AbilityItem>, Map<String, dynamic>> {
  const AbilityItemMapConverter();

  @override
  Map<String, AbilityItem> fromJson(Map<String, dynamic> json) {
    return json.map((key, value) => MapEntry(
          key,
          AbilityItem.fromJson(value as Map<String, dynamic>),
        ));
  }

  @override
  Map<String, dynamic> toJson(Map<String, AbilityItem> object) {
    return object.map((key, value) => MapEntry(key, value.toJson()));
  }
}
