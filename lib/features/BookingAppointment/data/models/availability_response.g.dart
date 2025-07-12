// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailabilityResponse _$AvailabilityResponseFromJson(
        Map<String, dynamic> json) =>
    AvailabilityResponse(
      id: json['_id'] as String,
      doctor: json['doctor'] as String,
      availability: (json['availability'] as List<dynamic>)
          .map((e) => DayAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      version: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$AvailabilityResponseToJson(
        AvailabilityResponse instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'doctor': instance.doctor,
      'availability': instance.availability,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.version,
    };

DayAvailability _$DayAvailabilityFromJson(Map<String, dynamic> json) =>
    DayAvailability(
      id: json['_id'] as String,
      day: json['day'] as String,
      slug: json['slug'] as String,
      timeSlots:
          (json['timeSlots'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$DayAvailabilityToJson(DayAvailability instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'day': instance.day,
      'slug': instance.slug,
      'timeSlots': instance.timeSlots,
    };
