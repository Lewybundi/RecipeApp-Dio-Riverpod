// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Area _$AreaFromJson(Map<String, dynamic> json) =>
    _Area(name: json['strArea'] as String);

Map<String, dynamic> _$AreaToJson(_Area instance) => <String, dynamic>{
  'strArea': instance.name,
};

_AreaResponse _$AreaResponseFromJson(Map<String, dynamic> json) =>
    _AreaResponse(
      meals: (json['meals'] as List<dynamic>?)
          ?.map((e) => Area.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AreaResponseToJson(_AreaResponse instance) =>
    <String, dynamic>{'meals': instance.meals};
