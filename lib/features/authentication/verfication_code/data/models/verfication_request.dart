import 'package:json_annotation/json_annotation.dart';
part 'verfication_request.g.dart';
@JsonSerializable()
class VerficationRequest {
  String code;
  VerficationRequest({required this.code});
 Map<String, dynamic> toJson() => _$VerficationRequestToJson(this);
  factory VerficationRequest.fromJson(Map<String, dynamic> json) =>
      _$VerficationRequestFromJson(json);
}