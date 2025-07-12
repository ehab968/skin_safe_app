// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_report_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserReportResponse _$UserReportResponseFromJson(Map<String, dynamic> json) =>
    UserReportResponse(
      id: json['id'] as String?,
      typeDetected: json['typeDetected'] as String?,
      scannedImage: json['scannedImage'] as String?,
      user: json['user'] as String?,
      confidence: (json['confidence'] as num?)?.toDouble(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      v: (json['v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserReportResponseToJson(UserReportResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'typeDetected': instance.typeDetected,
      'scannedImage': instance.scannedImage,
      'user': instance.user,
      'confidence': instance.confidence,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'v': instance.v,
    };
