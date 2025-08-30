// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mealDetailsHash() => r'7984dae6cc3d3f231f2bd53a76b3340c09a61689';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [mealDetails].
@ProviderFor(mealDetails)
const mealDetailsProvider = MealDetailsFamily();

/// See also [mealDetails].
class MealDetailsFamily extends Family<AsyncValue<Meal?>> {
  /// See also [mealDetails].
  const MealDetailsFamily();

  /// See also [mealDetails].
  MealDetailsProvider call(String id) {
    return MealDetailsProvider(id);
  }

  @override
  MealDetailsProvider getProviderOverride(
    covariant MealDetailsProvider provider,
  ) {
    return call(provider.id);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'mealDetailsProvider';
}

/// See also [mealDetails].
class MealDetailsProvider extends AutoDisposeFutureProvider<Meal?> {
  /// See also [mealDetails].
  MealDetailsProvider(String id)
    : this._internal(
        (ref) => mealDetails(ref as MealDetailsRef, id),
        from: mealDetailsProvider,
        name: r'mealDetailsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$mealDetailsHash,
        dependencies: MealDetailsFamily._dependencies,
        allTransitiveDependencies: MealDetailsFamily._allTransitiveDependencies,
        id: id,
      );

  MealDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<Meal?> Function(MealDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MealDetailsProvider._internal(
        (ref) => create(ref as MealDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Meal?> createElement() {
    return _MealDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MealDetailsProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MealDetailsRef on AutoDisposeFutureProviderRef<Meal?> {
  /// The parameter `id` of this provider.
  String get id;
}

class _MealDetailsProviderElement
    extends AutoDisposeFutureProviderElement<Meal?>
    with MealDetailsRef {
  _MealDetailsProviderElement(super.provider);

  @override
  String get id => (origin as MealDetailsProvider).id;
}

String _$categoriesHash() => r'1b154df2f23b2a3d1cc233399a8dcc0e13240775';

/// See also [categories].
@ProviderFor(categories)
final categoriesProvider = AutoDisposeFutureProvider<List<Category>>.internal(
  categories,
  name: r'categoriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$categoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CategoriesRef = AutoDisposeFutureProviderRef<List<Category>>;
String _$mealsByCategoryHash() => r'6a10166e8a1783e4680d12fbc419ce9e79089f0a';

/// See also [mealsByCategory].
@ProviderFor(mealsByCategory)
const mealsByCategoryProvider = MealsByCategoryFamily();

/// See also [mealsByCategory].
class MealsByCategoryFamily extends Family<AsyncValue<List<Meal>>> {
  /// See also [mealsByCategory].
  const MealsByCategoryFamily();

  /// See also [mealsByCategory].
  MealsByCategoryProvider call(String category) {
    return MealsByCategoryProvider(category);
  }

  @override
  MealsByCategoryProvider getProviderOverride(
    covariant MealsByCategoryProvider provider,
  ) {
    return call(provider.category);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'mealsByCategoryProvider';
}

/// See also [mealsByCategory].
class MealsByCategoryProvider extends AutoDisposeFutureProvider<List<Meal>> {
  /// See also [mealsByCategory].
  MealsByCategoryProvider(String category)
    : this._internal(
        (ref) => mealsByCategory(ref as MealsByCategoryRef, category),
        from: mealsByCategoryProvider,
        name: r'mealsByCategoryProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$mealsByCategoryHash,
        dependencies: MealsByCategoryFamily._dependencies,
        allTransitiveDependencies:
            MealsByCategoryFamily._allTransitiveDependencies,
        category: category,
      );

  MealsByCategoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.category,
  }) : super.internal();

  final String category;

  @override
  Override overrideWith(
    FutureOr<List<Meal>> Function(MealsByCategoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MealsByCategoryProvider._internal(
        (ref) => create(ref as MealsByCategoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        category: category,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Meal>> createElement() {
    return _MealsByCategoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MealsByCategoryProvider && other.category == category;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MealsByCategoryRef on AutoDisposeFutureProviderRef<List<Meal>> {
  /// The parameter `category` of this provider.
  String get category;
}

class _MealsByCategoryProviderElement
    extends AutoDisposeFutureProviderElement<List<Meal>>
    with MealsByCategoryRef {
  _MealsByCategoryProviderElement(super.provider);

  @override
  String get category => (origin as MealsByCategoryProvider).category;
}

String _$areasHash() => r'0e6a796a6e04e293f525dd72601c10f38b491404';

/// See also [areas].
@ProviderFor(areas)
final areasProvider = AutoDisposeFutureProvider<List<Area>>.internal(
  areas,
  name: r'areasProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$areasHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AreasRef = AutoDisposeFutureProviderRef<List<Area>>;
String _$mealsByAreaHash() => r'92ac836c2ce0685a1d07ab0e85fdb354fb9bad8a';

/// See also [mealsByArea].
@ProviderFor(mealsByArea)
const mealsByAreaProvider = MealsByAreaFamily();

/// See also [mealsByArea].
class MealsByAreaFamily extends Family<AsyncValue<List<Meal>>> {
  /// See also [mealsByArea].
  const MealsByAreaFamily();

  /// See also [mealsByArea].
  MealsByAreaProvider call(String area) {
    return MealsByAreaProvider(area);
  }

  @override
  MealsByAreaProvider getProviderOverride(
    covariant MealsByAreaProvider provider,
  ) {
    return call(provider.area);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'mealsByAreaProvider';
}

/// See also [mealsByArea].
class MealsByAreaProvider extends AutoDisposeFutureProvider<List<Meal>> {
  /// See also [mealsByArea].
  MealsByAreaProvider(String area)
    : this._internal(
        (ref) => mealsByArea(ref as MealsByAreaRef, area),
        from: mealsByAreaProvider,
        name: r'mealsByAreaProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$mealsByAreaHash,
        dependencies: MealsByAreaFamily._dependencies,
        allTransitiveDependencies: MealsByAreaFamily._allTransitiveDependencies,
        area: area,
      );

  MealsByAreaProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.area,
  }) : super.internal();

  final String area;

  @override
  Override overrideWith(
    FutureOr<List<Meal>> Function(MealsByAreaRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MealsByAreaProvider._internal(
        (ref) => create(ref as MealsByAreaRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        area: area,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Meal>> createElement() {
    return _MealsByAreaProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MealsByAreaProvider && other.area == area;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, area.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MealsByAreaRef on AutoDisposeFutureProviderRef<List<Meal>> {
  /// The parameter `area` of this provider.
  String get area;
}

class _MealsByAreaProviderElement
    extends AutoDisposeFutureProviderElement<List<Meal>>
    with MealsByAreaRef {
  _MealsByAreaProviderElement(super.provider);

  @override
  String get area => (origin as MealsByAreaProvider).area;
}

String _$mealSearchHash() => r'4dbf965226e9f14bea9070a4a3e1129b70c31fbf';

/// See also [MealSearch].
@ProviderFor(MealSearch)
final mealSearchProvider =
    AutoDisposeAsyncNotifierProvider<MealSearch, List<Meal>>.internal(
      MealSearch.new,
      name: r'mealSearchProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$mealSearchHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$MealSearch = AutoDisposeAsyncNotifier<List<Meal>>;
String _$randomMealsHash() => r'6ab56b4130f4ef16e78ab9224cb228fb929529fb';

/// See also [RandomMeals].
@ProviderFor(RandomMeals)
final randomMealsProvider =
    AutoDisposeAsyncNotifierProvider<RandomMeals, Meal?>.internal(
      RandomMeals.new,
      name: r'randomMealsProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$randomMealsHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$RandomMeals = AutoDisposeAsyncNotifier<Meal?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
