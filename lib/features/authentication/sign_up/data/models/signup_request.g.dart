// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRequest _$SignupRequestFromJson(Map<String, dynamic> json) =>
    SignupRequest(
      name: json['name'] as String,
      userName: json['userName'] as String,
      email: json['email'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
      skinTone: json['skinTone'] as String,
      gender: json['gender'] as String,
      password: json['password'] as String,
      passwordConfirm: json['passwordConfirm'] as String,
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$SignupRequestToJson(SignupRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userName': instance.userName,
      'email': instance.email,
      'dateOfBirth': instance.dateOfBirth,
      'skinTone': instance.skinTone,
      'gender': instance.gender,
      'password': instance.password,
      'passwordConfirm': instance.passwordConfirm,
      'phoneNumber': instance.phoneNumber,
    };
