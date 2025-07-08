// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentRequest _$AppointmentRequestFromJson(Map<String, dynamic> json) =>
    AppointmentRequest(
      doctor: json['doctor'] as String,
      date: json['date'] as String,
      timeSlot: json['timeSlot'] as String,
    );

Map<String, dynamic> _$AppointmentRequestToJson(AppointmentRequest instance) =>
    <String, dynamic>{
      'doctor': instance.doctor,
      'date': instance.date,
      'timeSlot': instance.timeSlot,
    };
