// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiErrorModel _$ApiErrorModelFromJson(Map<String, dynamic> json) =>
    ApiErrorModel(
      message: json['message'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => Error.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApiErrorModelToJson(ApiErrorModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errors': instance.errors,
    };

Error _$ErrorFromJson(Map<String, dynamic> json) => Error(
      type: json['type'] as String?,
      value: json['value'] as String?,
      msg: json['msg'] as String?,
      path: json['path'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$ErrorToJson(Error instance) => <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
      'msg': instance.msg,
      'path': instance.path,
      'location': instance.location,
    };
