// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Meal {

@JsonKey(name: 'idMeal') String get id;@JsonKey(name: 'strMeal') String get name;@JsonKey(name: 'strCategory') String? get category;@JsonKey(name: 'strArea') String? get area;@JsonKey(name: 'strInstructions') String? get instructions;@JsonKey(name: 'strMealThumb') String? get thumbnail;@JsonKey(name: 'strYoutube') String? get youtube;@JsonKey(name: 'strIngredient1') String? get ingredient1;@JsonKey(name: 'strIngredient2') String? get ingredient2;@JsonKey(name: 'strIngredient3') String? get ingredient3;@JsonKey(name: 'strIngredient4') String? get ingredient4;@JsonKey(name: 'strIngredient5') String? get ingredient5;@JsonKey(name: 'strMeasure1') String? get measure1;@JsonKey(name: 'strMeasure2') String? get measure2;@JsonKey(name: 'strMeasure3') String? get measure3;@JsonKey(name: 'strMeasure4') String? get measure4;@JsonKey(name: 'strMeasure5') String? get measure5;
/// Create a copy of Meal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealCopyWith<Meal> get copyWith => _$MealCopyWithImpl<Meal>(this as Meal, _$identity);

  /// Serializes this Meal to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Meal&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.area, area) || other.area == area)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.youtube, youtube) || other.youtube == youtube)&&(identical(other.ingredient1, ingredient1) || other.ingredient1 == ingredient1)&&(identical(other.ingredient2, ingredient2) || other.ingredient2 == ingredient2)&&(identical(other.ingredient3, ingredient3) || other.ingredient3 == ingredient3)&&(identical(other.ingredient4, ingredient4) || other.ingredient4 == ingredient4)&&(identical(other.ingredient5, ingredient5) || other.ingredient5 == ingredient5)&&(identical(other.measure1, measure1) || other.measure1 == measure1)&&(identical(other.measure2, measure2) || other.measure2 == measure2)&&(identical(other.measure3, measure3) || other.measure3 == measure3)&&(identical(other.measure4, measure4) || other.measure4 == measure4)&&(identical(other.measure5, measure5) || other.measure5 == measure5));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,category,area,instructions,thumbnail,youtube,ingredient1,ingredient2,ingredient3,ingredient4,ingredient5,measure1,measure2,measure3,measure4,measure5);

@override
String toString() {
  return 'Meal(id: $id, name: $name, category: $category, area: $area, instructions: $instructions, thumbnail: $thumbnail, youtube: $youtube, ingredient1: $ingredient1, ingredient2: $ingredient2, ingredient3: $ingredient3, ingredient4: $ingredient4, ingredient5: $ingredient5, measure1: $measure1, measure2: $measure2, measure3: $measure3, measure4: $measure4, measure5: $measure5)';
}


}

/// @nodoc
abstract mixin class $MealCopyWith<$Res>  {
  factory $MealCopyWith(Meal value, $Res Function(Meal) _then) = _$MealCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'idMeal') String id,@JsonKey(name: 'strMeal') String name,@JsonKey(name: 'strCategory') String? category,@JsonKey(name: 'strArea') String? area,@JsonKey(name: 'strInstructions') String? instructions,@JsonKey(name: 'strMealThumb') String? thumbnail,@JsonKey(name: 'strYoutube') String? youtube,@JsonKey(name: 'strIngredient1') String? ingredient1,@JsonKey(name: 'strIngredient2') String? ingredient2,@JsonKey(name: 'strIngredient3') String? ingredient3,@JsonKey(name: 'strIngredient4') String? ingredient4,@JsonKey(name: 'strIngredient5') String? ingredient5,@JsonKey(name: 'strMeasure1') String? measure1,@JsonKey(name: 'strMeasure2') String? measure2,@JsonKey(name: 'strMeasure3') String? measure3,@JsonKey(name: 'strMeasure4') String? measure4,@JsonKey(name: 'strMeasure5') String? measure5
});




}
/// @nodoc
class _$MealCopyWithImpl<$Res>
    implements $MealCopyWith<$Res> {
  _$MealCopyWithImpl(this._self, this._then);

  final Meal _self;
  final $Res Function(Meal) _then;

/// Create a copy of Meal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? category = freezed,Object? area = freezed,Object? instructions = freezed,Object? thumbnail = freezed,Object? youtube = freezed,Object? ingredient1 = freezed,Object? ingredient2 = freezed,Object? ingredient3 = freezed,Object? ingredient4 = freezed,Object? ingredient5 = freezed,Object? measure1 = freezed,Object? measure2 = freezed,Object? measure3 = freezed,Object? measure4 = freezed,Object? measure5 = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,youtube: freezed == youtube ? _self.youtube : youtube // ignore: cast_nullable_to_non_nullable
as String?,ingredient1: freezed == ingredient1 ? _self.ingredient1 : ingredient1 // ignore: cast_nullable_to_non_nullable
as String?,ingredient2: freezed == ingredient2 ? _self.ingredient2 : ingredient2 // ignore: cast_nullable_to_non_nullable
as String?,ingredient3: freezed == ingredient3 ? _self.ingredient3 : ingredient3 // ignore: cast_nullable_to_non_nullable
as String?,ingredient4: freezed == ingredient4 ? _self.ingredient4 : ingredient4 // ignore: cast_nullable_to_non_nullable
as String?,ingredient5: freezed == ingredient5 ? _self.ingredient5 : ingredient5 // ignore: cast_nullable_to_non_nullable
as String?,measure1: freezed == measure1 ? _self.measure1 : measure1 // ignore: cast_nullable_to_non_nullable
as String?,measure2: freezed == measure2 ? _self.measure2 : measure2 // ignore: cast_nullable_to_non_nullable
as String?,measure3: freezed == measure3 ? _self.measure3 : measure3 // ignore: cast_nullable_to_non_nullable
as String?,measure4: freezed == measure4 ? _self.measure4 : measure4 // ignore: cast_nullable_to_non_nullable
as String?,measure5: freezed == measure5 ? _self.measure5 : measure5 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Meal].
extension MealPatterns on Meal {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Meal value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Meal() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Meal value)  $default,){
final _that = this;
switch (_that) {
case _Meal():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Meal value)?  $default,){
final _that = this;
switch (_that) {
case _Meal() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'idMeal')  String id, @JsonKey(name: 'strMeal')  String name, @JsonKey(name: 'strCategory')  String? category, @JsonKey(name: 'strArea')  String? area, @JsonKey(name: 'strInstructions')  String? instructions, @JsonKey(name: 'strMealThumb')  String? thumbnail, @JsonKey(name: 'strYoutube')  String? youtube, @JsonKey(name: 'strIngredient1')  String? ingredient1, @JsonKey(name: 'strIngredient2')  String? ingredient2, @JsonKey(name: 'strIngredient3')  String? ingredient3, @JsonKey(name: 'strIngredient4')  String? ingredient4, @JsonKey(name: 'strIngredient5')  String? ingredient5, @JsonKey(name: 'strMeasure1')  String? measure1, @JsonKey(name: 'strMeasure2')  String? measure2, @JsonKey(name: 'strMeasure3')  String? measure3, @JsonKey(name: 'strMeasure4')  String? measure4, @JsonKey(name: 'strMeasure5')  String? measure5)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Meal() when $default != null:
return $default(_that.id,_that.name,_that.category,_that.area,_that.instructions,_that.thumbnail,_that.youtube,_that.ingredient1,_that.ingredient2,_that.ingredient3,_that.ingredient4,_that.ingredient5,_that.measure1,_that.measure2,_that.measure3,_that.measure4,_that.measure5);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'idMeal')  String id, @JsonKey(name: 'strMeal')  String name, @JsonKey(name: 'strCategory')  String? category, @JsonKey(name: 'strArea')  String? area, @JsonKey(name: 'strInstructions')  String? instructions, @JsonKey(name: 'strMealThumb')  String? thumbnail, @JsonKey(name: 'strYoutube')  String? youtube, @JsonKey(name: 'strIngredient1')  String? ingredient1, @JsonKey(name: 'strIngredient2')  String? ingredient2, @JsonKey(name: 'strIngredient3')  String? ingredient3, @JsonKey(name: 'strIngredient4')  String? ingredient4, @JsonKey(name: 'strIngredient5')  String? ingredient5, @JsonKey(name: 'strMeasure1')  String? measure1, @JsonKey(name: 'strMeasure2')  String? measure2, @JsonKey(name: 'strMeasure3')  String? measure3, @JsonKey(name: 'strMeasure4')  String? measure4, @JsonKey(name: 'strMeasure5')  String? measure5)  $default,) {final _that = this;
switch (_that) {
case _Meal():
return $default(_that.id,_that.name,_that.category,_that.area,_that.instructions,_that.thumbnail,_that.youtube,_that.ingredient1,_that.ingredient2,_that.ingredient3,_that.ingredient4,_that.ingredient5,_that.measure1,_that.measure2,_that.measure3,_that.measure4,_that.measure5);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'idMeal')  String id, @JsonKey(name: 'strMeal')  String name, @JsonKey(name: 'strCategory')  String? category, @JsonKey(name: 'strArea')  String? area, @JsonKey(name: 'strInstructions')  String? instructions, @JsonKey(name: 'strMealThumb')  String? thumbnail, @JsonKey(name: 'strYoutube')  String? youtube, @JsonKey(name: 'strIngredient1')  String? ingredient1, @JsonKey(name: 'strIngredient2')  String? ingredient2, @JsonKey(name: 'strIngredient3')  String? ingredient3, @JsonKey(name: 'strIngredient4')  String? ingredient4, @JsonKey(name: 'strIngredient5')  String? ingredient5, @JsonKey(name: 'strMeasure1')  String? measure1, @JsonKey(name: 'strMeasure2')  String? measure2, @JsonKey(name: 'strMeasure3')  String? measure3, @JsonKey(name: 'strMeasure4')  String? measure4, @JsonKey(name: 'strMeasure5')  String? measure5)?  $default,) {final _that = this;
switch (_that) {
case _Meal() when $default != null:
return $default(_that.id,_that.name,_that.category,_that.area,_that.instructions,_that.thumbnail,_that.youtube,_that.ingredient1,_that.ingredient2,_that.ingredient3,_that.ingredient4,_that.ingredient5,_that.measure1,_that.measure2,_that.measure3,_that.measure4,_that.measure5);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Meal implements Meal {
  const _Meal({@JsonKey(name: 'idMeal') required this.id, @JsonKey(name: 'strMeal') required this.name, @JsonKey(name: 'strCategory') this.category, @JsonKey(name: 'strArea') this.area, @JsonKey(name: 'strInstructions') this.instructions, @JsonKey(name: 'strMealThumb') this.thumbnail, @JsonKey(name: 'strYoutube') this.youtube, @JsonKey(name: 'strIngredient1') this.ingredient1, @JsonKey(name: 'strIngredient2') this.ingredient2, @JsonKey(name: 'strIngredient3') this.ingredient3, @JsonKey(name: 'strIngredient4') this.ingredient4, @JsonKey(name: 'strIngredient5') this.ingredient5, @JsonKey(name: 'strMeasure1') this.measure1, @JsonKey(name: 'strMeasure2') this.measure2, @JsonKey(name: 'strMeasure3') this.measure3, @JsonKey(name: 'strMeasure4') this.measure4, @JsonKey(name: 'strMeasure5') this.measure5});
  factory _Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);

@override@JsonKey(name: 'idMeal') final  String id;
@override@JsonKey(name: 'strMeal') final  String name;
@override@JsonKey(name: 'strCategory') final  String? category;
@override@JsonKey(name: 'strArea') final  String? area;
@override@JsonKey(name: 'strInstructions') final  String? instructions;
@override@JsonKey(name: 'strMealThumb') final  String? thumbnail;
@override@JsonKey(name: 'strYoutube') final  String? youtube;
@override@JsonKey(name: 'strIngredient1') final  String? ingredient1;
@override@JsonKey(name: 'strIngredient2') final  String? ingredient2;
@override@JsonKey(name: 'strIngredient3') final  String? ingredient3;
@override@JsonKey(name: 'strIngredient4') final  String? ingredient4;
@override@JsonKey(name: 'strIngredient5') final  String? ingredient5;
@override@JsonKey(name: 'strMeasure1') final  String? measure1;
@override@JsonKey(name: 'strMeasure2') final  String? measure2;
@override@JsonKey(name: 'strMeasure3') final  String? measure3;
@override@JsonKey(name: 'strMeasure4') final  String? measure4;
@override@JsonKey(name: 'strMeasure5') final  String? measure5;

/// Create a copy of Meal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealCopyWith<_Meal> get copyWith => __$MealCopyWithImpl<_Meal>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MealToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Meal&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.area, area) || other.area == area)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.youtube, youtube) || other.youtube == youtube)&&(identical(other.ingredient1, ingredient1) || other.ingredient1 == ingredient1)&&(identical(other.ingredient2, ingredient2) || other.ingredient2 == ingredient2)&&(identical(other.ingredient3, ingredient3) || other.ingredient3 == ingredient3)&&(identical(other.ingredient4, ingredient4) || other.ingredient4 == ingredient4)&&(identical(other.ingredient5, ingredient5) || other.ingredient5 == ingredient5)&&(identical(other.measure1, measure1) || other.measure1 == measure1)&&(identical(other.measure2, measure2) || other.measure2 == measure2)&&(identical(other.measure3, measure3) || other.measure3 == measure3)&&(identical(other.measure4, measure4) || other.measure4 == measure4)&&(identical(other.measure5, measure5) || other.measure5 == measure5));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,category,area,instructions,thumbnail,youtube,ingredient1,ingredient2,ingredient3,ingredient4,ingredient5,measure1,measure2,measure3,measure4,measure5);

@override
String toString() {
  return 'Meal(id: $id, name: $name, category: $category, area: $area, instructions: $instructions, thumbnail: $thumbnail, youtube: $youtube, ingredient1: $ingredient1, ingredient2: $ingredient2, ingredient3: $ingredient3, ingredient4: $ingredient4, ingredient5: $ingredient5, measure1: $measure1, measure2: $measure2, measure3: $measure3, measure4: $measure4, measure5: $measure5)';
}


}

/// @nodoc
abstract mixin class _$MealCopyWith<$Res> implements $MealCopyWith<$Res> {
  factory _$MealCopyWith(_Meal value, $Res Function(_Meal) _then) = __$MealCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'idMeal') String id,@JsonKey(name: 'strMeal') String name,@JsonKey(name: 'strCategory') String? category,@JsonKey(name: 'strArea') String? area,@JsonKey(name: 'strInstructions') String? instructions,@JsonKey(name: 'strMealThumb') String? thumbnail,@JsonKey(name: 'strYoutube') String? youtube,@JsonKey(name: 'strIngredient1') String? ingredient1,@JsonKey(name: 'strIngredient2') String? ingredient2,@JsonKey(name: 'strIngredient3') String? ingredient3,@JsonKey(name: 'strIngredient4') String? ingredient4,@JsonKey(name: 'strIngredient5') String? ingredient5,@JsonKey(name: 'strMeasure1') String? measure1,@JsonKey(name: 'strMeasure2') String? measure2,@JsonKey(name: 'strMeasure3') String? measure3,@JsonKey(name: 'strMeasure4') String? measure4,@JsonKey(name: 'strMeasure5') String? measure5
});




}
/// @nodoc
class __$MealCopyWithImpl<$Res>
    implements _$MealCopyWith<$Res> {
  __$MealCopyWithImpl(this._self, this._then);

  final _Meal _self;
  final $Res Function(_Meal) _then;

/// Create a copy of Meal
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? category = freezed,Object? area = freezed,Object? instructions = freezed,Object? thumbnail = freezed,Object? youtube = freezed,Object? ingredient1 = freezed,Object? ingredient2 = freezed,Object? ingredient3 = freezed,Object? ingredient4 = freezed,Object? ingredient5 = freezed,Object? measure1 = freezed,Object? measure2 = freezed,Object? measure3 = freezed,Object? measure4 = freezed,Object? measure5 = freezed,}) {
  return _then(_Meal(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,youtube: freezed == youtube ? _self.youtube : youtube // ignore: cast_nullable_to_non_nullable
as String?,ingredient1: freezed == ingredient1 ? _self.ingredient1 : ingredient1 // ignore: cast_nullable_to_non_nullable
as String?,ingredient2: freezed == ingredient2 ? _self.ingredient2 : ingredient2 // ignore: cast_nullable_to_non_nullable
as String?,ingredient3: freezed == ingredient3 ? _self.ingredient3 : ingredient3 // ignore: cast_nullable_to_non_nullable
as String?,ingredient4: freezed == ingredient4 ? _self.ingredient4 : ingredient4 // ignore: cast_nullable_to_non_nullable
as String?,ingredient5: freezed == ingredient5 ? _self.ingredient5 : ingredient5 // ignore: cast_nullable_to_non_nullable
as String?,measure1: freezed == measure1 ? _self.measure1 : measure1 // ignore: cast_nullable_to_non_nullable
as String?,measure2: freezed == measure2 ? _self.measure2 : measure2 // ignore: cast_nullable_to_non_nullable
as String?,measure3: freezed == measure3 ? _self.measure3 : measure3 // ignore: cast_nullable_to_non_nullable
as String?,measure4: freezed == measure4 ? _self.measure4 : measure4 // ignore: cast_nullable_to_non_nullable
as String?,measure5: freezed == measure5 ? _self.measure5 : measure5 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MealResponse {

 List<Meal>? get meals;
/// Create a copy of MealResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealResponseCopyWith<MealResponse> get copyWith => _$MealResponseCopyWithImpl<MealResponse>(this as MealResponse, _$identity);

  /// Serializes this MealResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealResponse&&const DeepCollectionEquality().equals(other.meals, meals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(meals));

@override
String toString() {
  return 'MealResponse(meals: $meals)';
}


}

/// @nodoc
abstract mixin class $MealResponseCopyWith<$Res>  {
  factory $MealResponseCopyWith(MealResponse value, $Res Function(MealResponse) _then) = _$MealResponseCopyWithImpl;
@useResult
$Res call({
 List<Meal>? meals
});




}
/// @nodoc
class _$MealResponseCopyWithImpl<$Res>
    implements $MealResponseCopyWith<$Res> {
  _$MealResponseCopyWithImpl(this._self, this._then);

  final MealResponse _self;
  final $Res Function(MealResponse) _then;

/// Create a copy of MealResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meals = freezed,}) {
  return _then(_self.copyWith(
meals: freezed == meals ? _self.meals : meals // ignore: cast_nullable_to_non_nullable
as List<Meal>?,
  ));
}

}


/// Adds pattern-matching-related methods to [MealResponse].
extension MealResponsePatterns on MealResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealResponse value)  $default,){
final _that = this;
switch (_that) {
case _MealResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MealResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Meal>? meals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealResponse() when $default != null:
return $default(_that.meals);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Meal>? meals)  $default,) {final _that = this;
switch (_that) {
case _MealResponse():
return $default(_that.meals);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Meal>? meals)?  $default,) {final _that = this;
switch (_that) {
case _MealResponse() when $default != null:
return $default(_that.meals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MealResponse implements MealResponse {
  const _MealResponse({final  List<Meal>? meals}): _meals = meals;
  factory _MealResponse.fromJson(Map<String, dynamic> json) => _$MealResponseFromJson(json);

 final  List<Meal>? _meals;
@override List<Meal>? get meals {
  final value = _meals;
  if (value == null) return null;
  if (_meals is EqualUnmodifiableListView) return _meals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MealResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealResponseCopyWith<_MealResponse> get copyWith => __$MealResponseCopyWithImpl<_MealResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MealResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealResponse&&const DeepCollectionEquality().equals(other._meals, _meals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_meals));

@override
String toString() {
  return 'MealResponse(meals: $meals)';
}


}

/// @nodoc
abstract mixin class _$MealResponseCopyWith<$Res> implements $MealResponseCopyWith<$Res> {
  factory _$MealResponseCopyWith(_MealResponse value, $Res Function(_MealResponse) _then) = __$MealResponseCopyWithImpl;
@override @useResult
$Res call({
 List<Meal>? meals
});




}
/// @nodoc
class __$MealResponseCopyWithImpl<$Res>
    implements _$MealResponseCopyWith<$Res> {
  __$MealResponseCopyWithImpl(this._self, this._then);

  final _MealResponse _self;
  final $Res Function(_MealResponse) _then;

/// Create a copy of MealResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meals = freezed,}) {
  return _then(_MealResponse(
meals: freezed == meals ? _self._meals : meals // ignore: cast_nullable_to_non_nullable
as List<Meal>?,
  ));
}


}

// dart format on
