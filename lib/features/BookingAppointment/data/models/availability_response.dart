import 'package:json_annotation/json_annotation.dart';

part 'availability_response.g.dart';

@JsonSerializable()
class AvailabilityResponse {
  @JsonKey(name: '_id')
  final String id;
  final String doctor;
  final List<DayAvailability> availability;
  final String createdAt;
  final String updatedAt;
  @JsonKey(name: '__v')
  final int version;

  AvailabilityResponse({
    required this.id,
    required this.doctor,
    required this.availability,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
  });

  factory AvailabilityResponse.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AvailabilityResponseToJson(this);
}

@JsonSerializable()
class DayAvailability {
  @JsonKey(name: '_id')
  final String id;
  final String day;
  final String slug;
  final List<String> timeSlots;

  DayAvailability({
    required this.id,
    required this.day,
    required this.slug,
    required this.timeSlots,
  });

  factory DayAvailability.fromJson(Map<String, dynamic> json) =>
      _$DayAvailabilityFromJson(json);

  Map<String, dynamic> toJson() => _$DayAvailabilityToJson(this);
}
