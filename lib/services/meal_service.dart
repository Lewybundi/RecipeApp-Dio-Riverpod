import 'package:dio_prac/services/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:dio/dio.dart';
import 'package:dio_prac/models/area.dart';
import 'package:dio_prac/models/category.dart';
import 'package:dio_prac/models/meal.dart';
part 'meal_service.g.dart';

@riverpod
MealService mealService(Ref ref) {
return MealService(ref.watch(dioProvider));
}

class MealService {
  final Dio _dio;
  MealService(this._dio);
  // Endpoint 1: Search meals by name
  Future<List<Meal>> searchMealsByName(String name) async {
    try {
      final response = await _dio.get(
        '/search.php',
        queryParameters: {'s': name},
      );
      final mealResponse = MealResponse.fromJson(response.data);
      return mealResponse.meals ?? [];
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Endpoint 2: Get meal by ID

  Future<Meal?> getMealById(String id) async {
    try {
      final response = await _dio.get(
        '/lookup.php',
        queryParameters: {'i': id},
      );
      final mealResponse = MealResponse.fromJson(response.data);
      return mealResponse.meals?.isNotEmpty == true
          ? mealResponse.meals!.first
          : null;
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  //Endpoint 3: Get all categories
  Future<List<Category>> getCategories() async {
    try {
      final response = await _dio.get('/categories.php');
      final categoryResponse = CategoryResponse.fromJson(response.data);
      return categoryResponse.categories ?? [];
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Endpoint 4: Get meals by category
  Future<List<Meal>> getMealsByCategory(String category) async {
    try {
      final response = await _dio.get(
        '/filter.php',
        queryParameters: {'c': category},
      );

      final mealResponse = MealResponse.fromJson(response.data);
      return mealResponse.meals ?? [];
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Endpoint 5: Get all areas
  Future<List<Area>> getAreas() async {
    try {
      final response = await _dio.get(
        '/list.php',
        queryParameters: {'a': 'list'},
      );

      final areaResponse = AreaResponse.fromJson(response.data);
      return areaResponse.meals ?? [];
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Endpoint 6: Get meals by area
  Future<List<Meal>> getMealsByArea(String area) async {
    try {
      final response = await _dio.get(
        '/filter.php',
        queryParameters: {'a': area},
      );

      final mealResponse = MealResponse.fromJson(response.data);
      return mealResponse.meals ?? [];
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  // Endpoint 7: Get random meal
  Future<Meal?> getRandomMeal() async {
    try {
      final response = await _dio.get('/random.php');

      final mealResponse = MealResponse.fromJson(response.data);
      return mealResponse.meals?.isNotEmpty == true
          ? mealResponse.meals!.first
          : null;
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  String _handleDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return 'Connection timeout. Please check your internet connection.';
      case DioExceptionType.sendTimeout:
        return 'Send timeout. Please try again.';
      case DioExceptionType.receiveTimeout:
        return 'Receive timeout. Please try again.';
      case DioExceptionType.badResponse:
        return 'Server error: ${e.response?.statusCode}';
      case DioExceptionType.cancel:
        return 'Request was cancelled.';
      case DioExceptionType.connectionError:
        return 'No internet connection.';
      default:
        return 'Something went wrong: ${e.message}';
    }
  }
}
