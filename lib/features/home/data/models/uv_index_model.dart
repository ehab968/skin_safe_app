import 'package:json_annotation/json_annotation.dart';

part 'uv_index_model.g.dart';

@JsonSerializable()
class UVIndexResponse {
  final bool success;
  final UVIndexData? data;

  UVIndexResponse({required this.success, this.data});

  factory UVIndexResponse.fromJson(Map<String, dynamic> json) =>
      _$UVIndexResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UVIndexResponseToJson(this);
}

@JsonSerializable()
class UVIndexData {
  @JsonKey(name: 'uvIndex')
  final double uvIndex;
  @JsonKey(name: 'riskLevel')
  final String riskLevel;

  UVIndexData({required this.uvIndex, required this.riskLevel});

  factory UVIndexData.fromJson(Map<String, dynamic> json) =>
      _$UVIndexDataFromJson(json);

  Map<String, dynamic> toJson() => _$UVIndexDataToJson(this);
}
