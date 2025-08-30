import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
abstract class Category with _$Category{
  const factory Category({
    @JsonKey(name: 'idCategory') required String id,
    @JsonKey(name: 'strCategory') required String name,
    @JsonKey(name: 'strCategoryThumb') String? thumbnail,
    @JsonKey(name: 'strCategoryDescription') String? description,
  }) = _Category;
  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
abstract class CategoryResponse with _$CategoryResponse{
  const factory CategoryResponse({
    List<Category>? categories,
  }) = _CategoryResponse;
  factory CategoryResponse.fromJson(Map<String, dynamic> json) => _$CategoryResponseFromJson(json);
}