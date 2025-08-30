import 'package:freezed_annotation/freezed_annotation.dart';

part 'area.freezed.dart';
part 'area.g.dart';

@freezed
abstract class Area with _$Area {
  const factory Area({
    @JsonKey(name: 'strArea') required String name,
  }) = _Area;

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);
}

@freezed
abstract class AreaResponse with _$AreaResponse {
  const factory AreaResponse({
    List<Area>? meals,
  }) = _AreaResponse;

  factory AreaResponse.fromJson(Map<String, dynamic> json) => 
      _$AreaResponseFromJson(json);
}