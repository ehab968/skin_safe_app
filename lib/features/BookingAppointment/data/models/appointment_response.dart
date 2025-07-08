import 'package:json_annotation/json_annotation.dart';

part 'appointment_response.g.dart';

@JsonSerializable()
class AppointmentResponse {
  final AppointmentData data;

  AppointmentResponse({required this.data});

  factory AppointmentResponse.fromJson(Map<String, dynamic> json) =>
      _$AppointmentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentResponseToJson(this);
}

@JsonSerializable()
class AppointmentData {
  final String doctor;
  final String patient;
  final String date;
  final String timeSlot;
  @JsonKey(name: '_id')
  final String id;
  final String createdAt;
  final String updatedAt;
  @JsonKey(name: '__v')
  final int version;

  AppointmentData({
    required this.doctor,
    required this.patient,
    required this.date,
    required this.timeSlot,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
  });

  factory AppointmentData.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDataFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentDataToJson(this);
}
