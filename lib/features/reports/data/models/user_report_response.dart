import 'package:json_annotation/json_annotation.dart';
part 'user_report_response.g.dart';
@JsonSerializable()
class UserReportResponse {
  String? id;
  String? typeDetected;
  String? scannedImage;
  String? user;
  double? confidence;
  String? createdAt;
  String? updatedAt;
  int? v;

  UserReportResponse({
    this.id,
    this.typeDetected,
    this.scannedImage,
    this.user,
    this.confidence,
    this.createdAt,
    this.updatedAt,
    this.v,
  });
  factory UserReportResponse.fromJson(Map<String, dynamic> json) =>
      _$UserReportResponseFromJson(json);
}
