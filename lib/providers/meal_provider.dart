import 'package:dio_prac/models/category.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:dio_prac/models/area.dart';
import 'package:dio_prac/models/meal.dart';
import 'package:dio_prac/services/meal_service.dart';

part 'meal_provider.g.dart';

@riverpod
class MealSearch extends _$MealSearch {
  @override
  FutureOr<List<Meal>> build() {
    return [];
  }

  Future<void> searchMeals(String query) async {
    if (query.isEmpty) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    try {
      final mealService = ref.read(mealServiceProvider);
      final meals = await mealService.searchMealsByName(query);
      state = AsyncValue.data(meals);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}

// Provider for getting meal details by ID

@riverpod
Future<Meal?> mealDetails(Ref ref, String id) {
  final mealService = ref.watch(mealServiceProvider);
  return mealService.getMealById(id);
}
@riverpod
Future<List<Category>> categories(Ref ref) async {
  final mealService = ref.watch(mealServiceProvider);
  return await mealService.getCategories();
}
@riverpod
Future<List<Meal>> mealsByCategory(Ref ref, String category) async {
  final mealService = ref.watch(mealServiceProvider);
  return await mealService.getMealsByCategory(category);
}
// Provider for getting all categories
@riverpod
Future<List<Area>> areas(Ref ref) {
  final mealService = ref.watch(mealServiceProvider);
  return mealService.getAreas();
}

// Provider for getting meals by area

@riverpod
Future<List<Meal>> mealsByArea(Ref ref, String area) async {
  final mealService = ref.watch(mealServiceProvider);
  return await mealService.getMealsByArea(area);
}

// Provider for getting random meal

@riverpod
class RandomMeals extends _$RandomMeals {
  @override
  FutureOr<Meal?> build() {
    return null;
  }

  Future<void> getRandomMeal() async {
    state = AsyncValue.loading();
    try {
      final mealService = ref.read(mealServiceProvider);
      final meal = await mealService.getRandomMeal();
      state = AsyncValue.data(meal);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}
