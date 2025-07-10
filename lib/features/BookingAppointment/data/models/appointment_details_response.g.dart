// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentDetailsResponse _$AppointmentDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    AppointmentDetailsResponse(
      data:
          AppointmentDetailsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppointmentDetailsResponseToJson(
        AppointmentDetailsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

AppointmentDetailsData _$AppointmentDetailsDataFromJson(
        Map<String, dynamic> json) =>
    AppointmentDetailsData(
      id: json['_id'] as String,
      doctor:
          AppointmentDoctor.fromJson(json['doctor'] as Map<String, dynamic>),
      patient:
          AppointmentPatient.fromJson(json['patient'] as Map<String, dynamic>),
      date: json['date'] as String,
      timeSlot: json['timeSlot'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$AppointmentDetailsDataToJson(
        AppointmentDetailsData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'doctor': instance.doctor,
      'patient': instance.patient,
      'date': instance.date,
      'timeSlot': instance.timeSlot,
      'createdAt': instance.createdAt,
    };

AppointmentDoctor _$AppointmentDoctorFromJson(Map<String, dynamic> json) =>
    AppointmentDoctor(
      id: json['_id'] as String,
      firstName: json['firstName'] as String,
      secondName: json['secondName'] as String,
      specialty: json['specialty'] as String,
      experience: (json['experience'] as num).toInt(),
      ratingsAverage: (json['ratingsAverage'] as num).toDouble(),
      image: json['image'] as String,
    );

Map<String, dynamic> _$AppointmentDoctorToJson(AppointmentDoctor instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'firstName': instance.firstName,
      'secondName': instance.secondName,
      'specialty': instance.specialty,
      'experience': instance.experience,
      'ratingsAverage': instance.ratingsAverage,
      'image': instance.image,
    };

AppointmentPatient _$AppointmentPatientFromJson(Map<String, dynamic> json) =>
    AppointmentPatient(
      id: json['_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$AppointmentPatientToJson(AppointmentPatient instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
    };
