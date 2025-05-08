import 'package:json_annotation/json_annotation.dart';
part 'signup_response.g.dart';
@JsonSerializable()
class SignupResponse {
  Data? data;
  String? message;

  SignupResponse({ this.data,  this.message});
  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);

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
  Data({this.id, this.name, this.userName, this.phoneNumber, this.dateOfBirth});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
