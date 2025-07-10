import 'package:json_annotation/json_annotation.dart';
import 'package:intl/intl.dart';

part 'appointments_response.g.dart';

@JsonSerializable()
class AppointmentsResponse {
  final int results;
  final List<AppointmentItem> data;

  AppointmentsResponse({
    required this.results,
    required this.data,
  });

  factory AppointmentsResponse.fromJson(Map<String, dynamic> json) =>
      _$AppointmentsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentsResponseToJson(this);
}

@JsonSerializable()
class AppointmentItem {
  @JsonKey(name: '_id')
  final String id;
  final AppointmentDoctor? doctor;
  final AppointmentPatient patient;
  final String date;
  final String timeSlot;
  final String createdAt;
  final String updatedAt;
  @JsonKey(name: '__v')
  final int version;

  AppointmentItem({
    required this.id,
    this.doctor,
    required this.patient,
    required this.date,
    required this.timeSlot,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
  });

  factory AppointmentItem.fromJson(Map<String, dynamic> json) =>
      _$AppointmentItemFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentItemToJson(this);

  String get formattedDateTime {
    try {
      final appointmentDate = DateTime.parse(date);
      final dateStr = DateFormat('MMM dd, yyyy').format(appointmentDate);
      return '$dateStr at $timeSlot';
    } catch (e) {
      return '$date at $timeSlot';
    }
  }
}

@JsonSerializable()
class AppointmentDoctor {
  @JsonKey(name: '_id')
  final String id;
  final String firstName;
  final String secondName;
  final String specialty;
  final int? experience;
  final double? ratingsAverage;
  final String? image;
  final List<DoctorAvailability>? availability;

  AppointmentDoctor({
    required this.id,
    required this.firstName,
    required this.secondName,
    required this.specialty,
    this.experience,
    this.ratingsAverage,
    this.image,
    this.availability,
  });

  factory AppointmentDoctor.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDoctorFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentDoctorToJson(this);
}

@JsonSerializable()
class DoctorAvailability {
  @JsonKey(name: '_id')
  final String id;
  final String doctor;
  final List<AvailabilityDay> availability;

  DoctorAvailability({
    required this.id,
    required this.doctor,
    required this.availability,
  });

  factory DoctorAvailability.fromJson(Map<String, dynamic> json) =>
      _$DoctorAvailabilityFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorAvailabilityToJson(this);
}

@JsonSerializable()
class AvailabilityDay {
  final String day;
  final List<String> timeSlots;

  AvailabilityDay({
    required this.day,
    required this.timeSlots,
  });

  factory AvailabilityDay.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityDayFromJson(json);

  Map<String, dynamic> toJson() => _$AvailabilityDayToJson(this);
}

@JsonSerializable()
class AppointmentPatient {
  @JsonKey(name: '_id')
  final String id;
  final String name;
  final String email;

  AppointmentPatient({
    required this.id,
    required this.name,
    required this.email,
  });

  factory AppointmentPatient.fromJson(Map<String, dynamic> json) =>
      _$AppointmentPatientFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentPatientToJson(this);
}
