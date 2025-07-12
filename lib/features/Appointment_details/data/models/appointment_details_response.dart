import 'package:json_annotation/json_annotation.dart';

part 'appointment_details_response.g.dart';

@JsonSerializable()
class AppointmentDetailsResponse {
  final AppointmentDetailsData data;

  AppointmentDetailsResponse({required this.data});

  factory AppointmentDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentDetailsResponseToJson(this);
}

@JsonSerializable()
class AppointmentDetailsData {
  @JsonKey(name: '_id')
  final String id;
  final AppointmentDoctor doctor;
  final AppointmentPatient patient;
  final String date;
  final String timeSlot;
  final String createdAt;

  AppointmentDetailsData({
    required this.id,
    required this.doctor,
    required this.patient,
    required this.date,
    required this.timeSlot,
    required this.createdAt,
  });

  factory AppointmentDetailsData.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDetailsDataFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentDetailsDataToJson(this);
}

@JsonSerializable()
class AppointmentDoctor {
  @JsonKey(name: '_id')
  final String id;
  final String firstName;
  final String secondName;
  final String specialty;
  final int experience;
  final double ratingsAverage;
  final String image;

  AppointmentDoctor({
    required this.id,
    required this.firstName,
    required this.secondName,
    required this.specialty,
    required this.experience,
    required this.ratingsAverage,
    required this.image,
  });

  factory AppointmentDoctor.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDoctorFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentDoctorToJson(this);

  String get fullName => 'Dr. ${firstName.trim()} ${secondName.trim()}'.trim();
}

@JsonSerializable()
class AppointmentPatient {
  @JsonKey(name: '_id')
  final String id;
  final String name;
  final String email;
  final String phoneNumber;

  AppointmentPatient({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
  });

  factory AppointmentPatient.fromJson(Map<String, dynamic> json) =>
      _$AppointmentPatientFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentPatientToJson(this);
}
