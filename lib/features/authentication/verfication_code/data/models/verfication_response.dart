
import 'package:json_annotation/json_annotation.dart';
part 'verfication_response.g.dart';
@JsonSerializable()
class VerficationResponse {
  String? status;
  String? message;
  Data? data;
  String? token;

  VerficationResponse({this.status, this.message, this.data, this.token});
  factory VerficationResponse.fromJson(Map<String, dynamic> json) =>
      _$VerficationResponseFromJson(json);
  Map<String, dynamic> toJson() => _$VerficationResponseToJson(this);
}
 
@JsonSerializable()
class Data {
  @JsonKey(name: '_id')
  String? id;
  String? name;
  String? userName;
  String? phoneNumber;
  String? dateOfBirth;
  String? gender;
  String? skinTone;
  String? email;
  String? password;

  Data({
    this.id,
    this.name,
    this.userName,
    this.phoneNumber,
    this.dateOfBirth,
    this.gender,
    this.skinTone,
    this.email,
    this.password,
  });
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
