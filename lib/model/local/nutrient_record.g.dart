// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrient_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NutrientRecordImpl _$$NutrientRecordImplFromJson(Map<String, dynamic> json) =>
    _$NutrientRecordImpl(
      dateTime: DateTime.parse(json['dateTime'] as String),
      weight: (json['weight'] as num).toDouble(),
      kcal: (json['kcal'] as num).toDouble(),
      carbohydrate: (json['carbohydrate'] as num).toDouble(),
      protein: (json['protein'] as num).toDouble(),
      fat: (json['fat'] as num).toDouble(),
      carbohydrateSugar: (json['carbohydrateSugar'] as num).toDouble(),
      carbohydrateFiber: (json['carbohydrateFiber'] as num).toDouble(),
      saturatedFat: (json['saturatedFat'] as num).toDouble(),
      unsaturatedFat: (json['unsaturatedFat'] as num).toDouble(),
      transFat: (json['transFat'] as num).toDouble(),
      cholesterol: (json['cholesterol'] as num).toDouble(),
      fiber: (json['fiber'] as num).toDouble(),
      sodium: (json['sodium'] as num).toDouble(),
      potassium: (json['potassium'] as num).toDouble(),
    );

Map<String, dynamic> _$$NutrientRecordImplToJson(
        _$NutrientRecordImpl instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime.toIso8601String(),
      'weight': instance.weight,
      'kcal': instance.kcal,
      'carbohydrate': instance.carbohydrate,
      'protein': instance.protein,
      'fat': instance.fat,
      'carbohydrateSugar': instance.carbohydrateSugar,
      'carbohydrateFiber': instance.carbohydrateFiber,
      'saturatedFat': instance.saturatedFat,
      'unsaturatedFat': instance.unsaturatedFat,
      'transFat': instance.transFat,
      'cholesterol': instance.cholesterol,
      'fiber': instance.fiber,
      'sodium': instance.sodium,
      'potassium': instance.potassium,
    };
