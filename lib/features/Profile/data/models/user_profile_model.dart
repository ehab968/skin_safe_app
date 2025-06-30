import 'package:json_annotation/json_annotation.dart';
part 'user_profile_model.g.dart';

@JsonSerializable()
class UserProfileResponse {
  UserProfileData? data;

  UserProfileResponse({this.data});

  factory UserProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileResponseToJson(this);
}

@JsonSerializable()
class UserProfileData {
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

  UserProfileData({
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

  factory UserProfileData.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileDataToJson(this);
}
