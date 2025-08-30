import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal.freezed.dart';
part 'meal.g.dart';

@freezed
abstract class Meal with _$Meal{
  const factory Meal({
   @JsonKey(name: 'idMeal') required String id,
    @JsonKey(name: 'strMeal') required String name,
    @JsonKey(name: 'strCategory') String? category,
    @JsonKey(name: 'strArea') String? area,
    @JsonKey(name: 'strInstructions') String? instructions,
    @JsonKey(name: 'strMealThumb') String? thumbnail,
    @JsonKey(name: 'strYoutube') String? youtube,
    @JsonKey(name: 'strIngredient1') String? ingredient1,
    @JsonKey(name: 'strIngredient2') String? ingredient2,
    @JsonKey(name: 'strIngredient3') String? ingredient3,
    @JsonKey(name: 'strIngredient4') String? ingredient4,
    @JsonKey(name: 'strIngredient5') String? ingredient5,
    @JsonKey(name: 'strMeasure1') String? measure1,
    @JsonKey(name: 'strMeasure2') String? measure2,
    @JsonKey(name: 'strMeasure3') String? measure3,
    @JsonKey(name: 'strMeasure4') String? measure4,
    @JsonKey(name: 'strMeasure5') String? measure5,
  }) = _Meal;
  factory Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);
}

@freezed
abstract class MealResponse with _$MealResponse{
  const factory MealResponse({
    List<Meal>? meals
  }) = _MealResponse;

  factory MealResponse.fromJson(Map<String, dynamic> json) => _$MealResponseFromJson(json);
}