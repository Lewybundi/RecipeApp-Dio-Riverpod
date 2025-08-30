# 🍽️ Flutter Dio Tutorial - Recipe App

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Riverpod](https://img.shields.io/badge/Riverpod-0080FF?style=for-the-badge&logo=flutter&logoColor=white)](https://riverpod.dev)

A comprehensive Flutter application demonstrating **Dio HTTP client** with **Riverpod state management** and **Freezed models**. Built as a complete learning resource for Flutter developers wanting to master modern HTTP handling patterns.

## 🎯 Project Overview

This project showcases a **Recipe App** that consumes TheMealDB API, demonstrating real-world usage of:

- **Dio** for HTTP requests with proper configuration
- **Riverpod** with code generation for state management
- **Freezed** for immutable data models
- **Clean Architecture** with separated concerns
- **Error Handling** and loading states
- **Modern Flutter UI** patterns

## ✨ Features

| Feature | Description |
|---------|-------------|
| 🔍 **Meal Search** | Search meals by name with real-time results |
| 🎲 **Random Meal** | Discover new recipes with random meal generator |
| 📂 **Categories** | Browse meals by categories (Seafood, Chicken, etc.) |
| 🌍 **Cuisines** | Explore international cuisines by area |
| 📖 **Detailed Recipes** | View ingredients, instructions, and YouTube videos |
| 🚨 **Error Handling** | Graceful error states with retry functionality |
| 📱 **Responsive UI** | Clean, modern Material Design 3 interface |

## 🏗️ Architecture

```
📦 lib/
├── 📁 models/          # Freezed data models
│   ├── meal.dart       # Meal model with JSON serialization
│   ├── category.dart   # Category model
│   └── area.dart       # Area/cuisine model
├── 📁 services/        # API layer
│   ├── dio_client.dart # Dio configuration & interceptors
│   └── meal_service.dart # API service methods
├── 📁 providers/       # State management
│   └── meal_providers.dart # Riverpod providers with code generation
├── 📁 screens/         # UI screens
│   ├── home_screen.dart
│   ├── meal_details_screen.dart
│   ├── categories_screen.dart
│   ├── meals_by_category_screen.dart
│   ├── areas_screen.dart
│   └── meals_by_area_screen.dart
└── main.dart          # App entry point
```

## 🛠️ Tech Stack

| Technology | Purpose | Version |
|------------|---------|---------|
| **Flutter** | UI Framework | Latest |
| **Dio** | HTTP Client | ^5.9.0 |
| **Riverpod** | State Management | ^2.6.1 |
| **Freezed** | Data Classes | ^3.1.0 |
| **JSON Annotation** | Serialization | ^4.9.0 |

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.10.0 or higher)
- Dart SDK (3.0.0 or higher)
- Android Studio / VS Code
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/flutter-dio-tutorial.git
   cd flutter-dio-tutorial
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate code**
   ```bash
   flutter packages pub run build_runner build --delete-conflicting-outputs
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

## 📡 API Endpoints

This app demonstrates **7 different API endpoints** from [TheMealDB](https://www.themealdb.com/api.php):

| Endpoint | Method | Purpose | Example |
|----------|---------|---------|---------|
| `/search.php?s={name}` | GET | Search meals by name | Search "chicken" |
| `/lookup.php?i={id}` | GET | Get meal details | Get meal with ID |
| `/categories.php` | GET | List all categories | Browse categories |
| `/filter.php?c={category}` | GET | Meals by category | "Seafood" meals |
| `/list.php?a=list` | GET | List all areas | All cuisines |
| `/filter.php?a={area}` | GET | Meals by area | "Italian" cuisine |
| `/random.php` | GET | Random meal | Discover recipes |

## 🧩 Key Learning Components

### 1. **Dio Configuration**
```dart
// Centralized HTTP client with interceptors
final dio = Dio();
dio.options = BaseOptions(
  baseUrl: 'https://www.themealdb.com/api/json/v1/1',
  connectTimeout: const Duration(seconds: 10),
  receiveTimeout: const Duration(seconds: 10),
);
```

### 2. **Freezed Models**
```dart
@freezed
class Meal with _$Meal {
  const factory Meal({
    @JsonKey(name: 'idMeal') required String id,
    @JsonKey(name: 'strMeal') required String name,
    // ... other fields
  }) = _Meal;

  factory Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);
}
```

### 3. **Riverpod Providers**
```dart
@riverpod
Future<List<Meal>> searchMeals(SearchMealsRef ref, String query) async {
  final mealService = ref.watch(mealServiceProvider);
  return await mealService.searchMealsByName(query);
}
```

### 4. **Error Handling**
```dart
try {
  final response = await _dio.get('/search.php', queryParameters: {'s': name});
  return MealResponse.fromJson(response.data).meals ?? [];
} on DioException catch (e) {
  throw _handleDioError(e);
}
```

## 🎨 Screenshots

| Home Screen | Categories | Meal Details |
|-------------|------------|--------------|
| Search & Random | Grid View | Full Recipe |

## 📱 Demo

The app includes:
- **Interactive search** with real-time results
- **Beautiful category browsing** with images
- **Detailed recipe views** with ingredients and instructions
- **International cuisine exploration** by country
- **Random meal discovery** feature

## 🧪 Testing

### Manual Testing
1. **Search Feature**: Try "chicken", "pasta", "cake"
2. **Random Meal**: Click multiple times to see different recipes
3. **Categories**: Browse Seafood, Dessert, Vegetarian
4. **Areas**: Explore Italian, Indian, Mexican cuisines
5. **Error Handling**: Turn off internet to test error states

### Unit Testing (Future Enhancement)
```bash
flutter test
```

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/amazing-feature`)
3. **Commit** your changes (`git commit -m 'Add amazing feature'`)
4. **Push** to the branch (`git push origin feature/amazing-feature`)
5. **Open** a Pull Request

### Development Guidelines
- Follow the existing architecture patterns
- Add proper error handling for new features
- Include loading states for async operations
- Write clear commit messages
- Update documentation for new features

## 📖 Learning Resources

### Dio Documentation
- [Official Dio Documentation](https://pub.dev/packages/dio)
- [Dio Interceptors Guide](https://pub.dev/documentation/dio/latest/dio/Interceptor-class.html)

### Riverpod Resources
- [Riverpod Documentation](https://riverpod.dev)
- [Code Generation Guide](https://riverpod.dev/docs/concepts/about_code_generation)

### Freezed Resources
- [Freezed Documentation](https://pub.dev/packages/freezed)
- [JSON Serialization Guide](https://docs.flutter.dev/data-and-backend/serialization/json)

## 🐛 Common Issues & Solutions

### Code Generation Issues
```bash
# Clean and regenerate
flutter packages pub run build_runner clean
flutter packages pub run build_runner build --delete-conflicting-outputs
```

### API Issues
- **No internet**: App shows proper error messages
- **Slow responses**: 10-second timeout configured
- **Invalid responses**: Handled gracefully with null checks

### Build Issues
```bash
# Clean project
flutter clean
flutter pub get
flutter packages pub run build_runner build
```


## 🙏 Acknowledgments

- **TheMealDB** for providing free recipe API
- **Flutter Team** for the amazing framework
- **Riverpod** and **Freezed** maintainers for excellent packages

