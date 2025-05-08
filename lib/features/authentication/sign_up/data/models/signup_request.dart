import 'package:json_annotation/json_annotation.dart';
part 'signup_request.g.dart';
@JsonSerializable()
class SignupRequest {
  String name;
  String userName;
  String email;
  String dateOfBirth;
  String skinTone;
  String gender;
  String password;
  String passwordConfirm;
  String phoneNumber;

  SignupRequest({
    required this.name,
    required this.userName,
    required this.email,
    required this.dateOfBirth,
    required this.skinTone,
    required this.gender,
    required this.password,
    required this.passwordConfirm,
    required this.phoneNumber,
  });
 Map<String, dynamic> toJson() => _$SignupRequestToJson(this);
}
