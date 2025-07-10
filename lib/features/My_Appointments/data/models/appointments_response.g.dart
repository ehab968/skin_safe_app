// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointments_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentsResponse _$AppointmentsResponseFromJson(
        Map<String, dynamic> json) =>
    AppointmentsResponse(
      results: (json['results'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => AppointmentItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AppointmentsResponseToJson(
        AppointmentsResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
      'data': instance.data,
    };

AppointmentItem _$AppointmentItemFromJson(Map<String, dynamic> json) =>
    AppointmentItem(
      id: json['_id'] as String,
      doctor: json['doctor'] == null
          ? null
          : AppointmentDoctor.fromJson(json['doctor'] as Map<String, dynamic>),
      patient:
          AppointmentPatient.fromJson(json['patient'] as Map<String, dynamic>),
      date: json['date'] as String,
      timeSlot: json['timeSlot'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      version: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$AppointmentItemToJson(AppointmentItem instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'doctor': instance.doctor,
      'patient': instance.patient,
      'date': instance.date,
      'timeSlot': instance.timeSlot,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.version,
    };

AppointmentDoctor _$AppointmentDoctorFromJson(Map<String, dynamic> json) =>
    AppointmentDoctor(
      id: json['_id'] as String,
      firstName: json['firstName'] as String,
      secondName: json['secondName'] as String,
      specialty: json['specialty'] as String,
      experience: (json['experience'] as num?)?.toInt(),
      ratingsAverage: (json['ratingsAverage'] as num?)?.toDouble(),
      image: json['image'] as String?,
      availability: (json['availability'] as List<dynamic>?)
          ?.map((e) => DoctorAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'availability': instance.availability,
    };

DoctorAvailability _$DoctorAvailabilityFromJson(Map<String, dynamic> json) =>
    DoctorAvailability(
      id: json['_id'] as String,
      doctor: json['doctor'] as String,
      availability: (json['availability'] as List<dynamic>)
          .map((e) => AvailabilityDay.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DoctorAvailabilityToJson(DoctorAvailability instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'doctor': instance.doctor,
      'availability': instance.availability,
    };

AvailabilityDay _$AvailabilityDayFromJson(Map<String, dynamic> json) =>
    AvailabilityDay(
      day: json['day'] as String,
      timeSlots:
          (json['timeSlots'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AvailabilityDayToJson(AvailabilityDay instance) =>
    <String, dynamic>{
      'day': instance.day,
      'timeSlots': instance.timeSlots,
    };

AppointmentPatient _$AppointmentPatientFromJson(Map<String, dynamic> json) =>
    AppointmentPatient(
      id: json['_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$AppointmentPatientToJson(AppointmentPatient instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };
