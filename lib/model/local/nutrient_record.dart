import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrient_record.freezed.dart';
part 'nutrient_record.g.dart';

@freezed
class NutrientRecord with _$NutrientRecord {
  const factory NutrientRecord({
    required DateTime dateTime,
    required double weight,
    required double kcal,

    required double carbohydrate,
    required double protein,
    required double fat,

    required double carbohydrateSugar,
    required double carbohydrateFiber,

    required double saturatedFat,
    required double unsaturatedFat,
    required double transFat,

    required double cholesterol,
    required double fiber,
    required double sodium, // Natrium
    required double potassium,  // kalium
  }) = _NutrientRecord;

  factory NutrientRecord.fromJson(Map<String, Object?> json) =>
      _$NutrientRecordFromJson(json);

  const NutrientRecord._();
}
