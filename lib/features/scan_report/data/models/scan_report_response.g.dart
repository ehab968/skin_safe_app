// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScanReportResponse _$ScanReportResponseFromJson(Map<String, dynamic> json) =>
    ScanReportResponse(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      aiResult: json['aiResult'] == null
          ? null
          : AiResult.fromJson(json['aiResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScanReportResponseToJson(ScanReportResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'aiResult': instance.aiResult,
    };

AiResult _$AiResultFromJson(Map<String, dynamic> json) => AiResult(
      confidence: (json['confidence'] as num?)?.toDouble(),
      label: json['label'] as String?,
      rawOutput: (json['rawOutput'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$AiResultToJson(AiResult instance) => <String, dynamic>{
      'confidence': instance.confidence,
      'label': instance.label,
      'rawOutput': instance.rawOutput,
      'comment': instance.comment,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      typeDetected: json['typeDetected'] as String?,
      scannedImage: json['scannedImage'] as String?,
      user: json['user'] as String?,
      confidence: (json['confidence'] as num?)?.toDouble(),
      id: json['id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'typeDetected': instance.typeDetected,
      'scannedImage': instance.scannedImage,
      'user': instance.user,
      'confidence': instance.confidence,
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'v': instance.v,
    };
