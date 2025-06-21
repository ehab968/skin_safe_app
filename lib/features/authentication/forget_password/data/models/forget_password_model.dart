import 'package:json_annotation/json_annotation.dart';
part 'forget_password_model.g.dart';
@JsonSerializable()
class ForgetPasswordResponse {
  String? status;
  String? message;
  String? token;
  ForgetPasswordResponse({this.message, this.token});
  factory ForgetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordResponseFromJson(json);
}

@JsonSerializable()
class ForgetPasswordRequest {
  String? email;
  ForgetPasswordRequest({this.email});
  Map<String, dynamic> toJson() => _$ForgetPasswordRequestToJson(this);
}
