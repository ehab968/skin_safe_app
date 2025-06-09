import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';
@JsonSerializable()
class LoginResponse {
  Data? data;
  String? token;
  String? message;

  LoginResponse({this.data, this.token, this.message});
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
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
}
