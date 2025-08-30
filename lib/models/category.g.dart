// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
  id: json['idCategory'] as String,
  name: json['strCategory'] as String,
  thumbnail: json['strCategoryThumb'] as String?,
  description: json['strCategoryDescription'] as String?,
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'idCategory': instance.id,
  'strCategory': instance.name,
  'strCategoryThumb': instance.thumbnail,
  'strCategoryDescription': instance.description,
};

_CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) =>
    _CategoryResponse(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryResponseToJson(_CategoryResponse instance) =>
    <String, dynamic>{'categories': instance.categories};
