// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Meal _$MealFromJson(Map<String, dynamic> json) => _Meal(
  id: json['idMeal'] as String,
  name: json['strMeal'] as String,
  category: json['strCategory'] as String?,
  area: json['strArea'] as String?,
  instructions: json['strInstructions'] as String?,
  thumbnail: json['strMealThumb'] as String?,
  youtube: json['strYoutube'] as String?,
  ingredient1: json['strIngredient1'] as String?,
  ingredient2: json['strIngredient2'] as String?,
  ingredient3: json['strIngredient3'] as String?,
  ingredient4: json['strIngredient4'] as String?,
  ingredient5: json['strIngredient5'] as String?,
  measure1: json['strMeasure1'] as String?,
  measure2: json['strMeasure2'] as String?,
  measure3: json['strMeasure3'] as String?,
  measure4: json['strMeasure4'] as String?,
  measure5: json['strMeasure5'] as String?,
);

Map<String, dynamic> _$MealToJson(_Meal instance) => <String, dynamic>{
  'idMeal': instance.id,
  'strMeal': instance.name,
  'strCategory': instance.category,
  'strArea': instance.area,
  'strInstructions': instance.instructions,
  'strMealThumb': instance.thumbnail,
  'strYoutube': instance.youtube,
  'strIngredient1': instance.ingredient1,
  'strIngredient2': instance.ingredient2,
  'strIngredient3': instance.ingredient3,
  'strIngredient4': instance.ingredient4,
  'strIngredient5': instance.ingredient5,
  'strMeasure1': instance.measure1,
  'strMeasure2': instance.measure2,
  'strMeasure3': instance.measure3,
  'strMeasure4': instance.measure4,
  'strMeasure5': instance.measure5,
};

_MealResponse _$MealResponseFromJson(Map<String, dynamic> json) =>
    _MealResponse(
      meals: (json['meals'] as List<dynamic>?)
          ?.map((e) => Meal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MealResponseToJson(_MealResponse instance) =>
    <String, dynamic>{'meals': instance.meals};
