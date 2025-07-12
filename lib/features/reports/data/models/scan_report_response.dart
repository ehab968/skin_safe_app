import 'package:json_annotation/json_annotation.dart';
part 'scan_report_response.g.dart';

@JsonSerializable()
class ScanReportResponse {
  Data? data;
  AiResult? aiResult;

  ScanReportResponse({this.data, this.aiResult});
  factory ScanReportResponse.fromJson(Map<String, dynamic> json) =>
      _$ScanReportResponseFromJson(json);
}

@JsonSerializable()
class AiResult {
  double? confidence;
  String? label;
  List<double>? rawOutput;
  String? comment;

  AiResult({this.confidence, this.label, this.rawOutput, this.comment});
  factory AiResult.fromJson(Map<String, dynamic> json) =>
      _$AiResultFromJson(json);
}

@JsonSerializable()
class Data {
  String? typeDetected;
  String? scannedImage;
  String? user;
  double? confidence;
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  Data({
    this.typeDetected,
    this.scannedImage,
    this.user,
    this.confidence,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.v,
  });
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
