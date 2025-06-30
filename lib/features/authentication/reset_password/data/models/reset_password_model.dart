import 'package:json_annotation/json_annotation.dart';
part 'reset_password_model.g.dart';

@JsonSerializable()
class ResetPasswordRequest {
  String? email;
  String? newPassword;
  String? passwordConfirm;
  ResetPasswordRequest({this.email, this.newPassword, this.passwordConfirm});
  Map<String, dynamic> toJson() => _$ResetPasswordRequestToJson(this);
}

@JsonSerializable()
class ResetPasswordResponse {
  String? token;
  ResetPasswordResponse({this.token});
  factory ResetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordResponseFromJson(json);
}
