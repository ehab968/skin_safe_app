import 'package:json_annotation/json_annotation.dart';

part 'appointment_request.g.dart';

@JsonSerializable()
class AppointmentRequest {
  final String doctor;
  final String date;
  final String timeSlot;

  AppointmentRequest({
    required this.doctor,
    required this.date,
    required this.timeSlot,
  });

  factory AppointmentRequest.fromJson(Map<String, dynamic> json) =>
      _$AppointmentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentRequestToJson(this);
}
