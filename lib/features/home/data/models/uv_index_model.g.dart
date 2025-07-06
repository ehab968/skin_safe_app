// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uv_index_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UVIndexResponse _$UVIndexResponseFromJson(Map<String, dynamic> json) =>
    UVIndexResponse(
      success: json['success'] as bool,
      data: json['data'] == null
          ? null
          : UVIndexData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UVIndexResponseToJson(UVIndexResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

UVIndexData _$UVIndexDataFromJson(Map<String, dynamic> json) => UVIndexData(
      uvIndex: (json['uvIndex'] as num).toDouble(),
      riskLevel: json['riskLevel'] as String,
    );

Map<String, dynamic> _$UVIndexDataToJson(UVIndexData instance) =>
    <String, dynamic>{
      'uvIndex': instance.uvIndex,
      'riskLevel': instance.riskLevel,
    };
