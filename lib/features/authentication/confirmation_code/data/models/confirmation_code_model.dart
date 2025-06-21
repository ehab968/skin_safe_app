import 'package:json_annotation/json_annotation.dart';

part 'confirmation_code_model.g.dart';

@JsonSerializable()
class ConfirmationCodeResponse {
  String? status;
  String? token;
  ConfirmationCodeResponse({this.status, this.token});

  factory ConfirmationCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$ConfirmationCodeResponseFromJson(json);
}

@JsonSerializable()
class ConfirmationCodeRequest {
  String? resetCode;
  ConfirmationCodeRequest({this.resetCode});

  Map<String, dynamic> toJson() => _$ConfirmationCodeRequestToJson(this);
}
