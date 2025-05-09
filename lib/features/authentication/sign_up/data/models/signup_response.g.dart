// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupResponse _$SignupResponseFromJson(Map<String, dynamic> json) =>
    SignupResponse(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$SignupResponseToJson(SignupResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'token': instance.token,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      userName: json['userName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
    )
      ..gender = json['gender'] as String?
      ..skinTone = json['skinTone'] as String?
      ..email = json['email'] as String?
      ..password = json['password'] as String?;

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'userName': instance.userName,
      'phoneNumber': instance.phoneNumber,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'skinTone': instance.skinTone,
      'email': instance.email,
      'password': instance.password,
    };
