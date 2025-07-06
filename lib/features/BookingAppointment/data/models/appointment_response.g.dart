// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentResponse _$AppointmentResponseFromJson(Map<String, dynamic> json) =>
    AppointmentResponse(
      data: AppointmentData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppointmentResponseToJson(
        AppointmentResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

AppointmentData _$AppointmentDataFromJson(Map<String, dynamic> json) =>
    AppointmentData(
      doctor: json['doctor'] as String,
      patient: json['patient'] as String,
      date: json['date'] as String,
      timeSlot: json['timeSlot'] as String,
      id: json['_id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      version: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$AppointmentDataToJson(AppointmentData instance) =>
    <String, dynamic>{
      'doctor': instance.doctor,
      'patient': instance.patient,
      'date': instance.date,
      'timeSlot': instance.timeSlot,
      '_id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.version,
    };
