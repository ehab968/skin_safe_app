// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirmation_code_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmationCodeResponse _$ConfirmationCodeResponseFromJson(
        Map<String, dynamic> json) =>
    ConfirmationCodeResponse(
      status: json['status'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$ConfirmationCodeResponseToJson(
        ConfirmationCodeResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'token': instance.token,
    };

ConfirmationCodeRequest _$ConfirmationCodeRequestFromJson(
        Map<String, dynamic> json) =>
    ConfirmationCodeRequest(
      resetCode: json['resetCode'] as String?,
    );

Map<String, dynamic> _$ConfirmationCodeRequestToJson(
        ConfirmationCodeRequest instance) =>
    <String, dynamic>{
      'resetCode': instance.resetCode,
    };
