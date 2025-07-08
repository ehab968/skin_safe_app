import 'package:json_annotation/json_annotation.dart';
part 'top_doctors_model.g.dart';

@JsonSerializable()
class DoctorsResponse {
  List<TopDoctorsModel>? data;

  DoctorsResponse({this.data});

  factory DoctorsResponse.fromJson(Map<String, dynamic> json) =>
      _$DoctorsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorsResponseToJson(this);
}

@JsonSerializable()
class TopDoctorsModel {
  @JsonKey(name: '_id')
  String? id;
  String? firstName;
  String? secondName;
  String? specialty;
  int? experience;
  double? ratingsAverage;
  int? ratingsQuantity;
  String? about;
  String? certificate;
  String? image;
  String? day;
  String? role;
  String? createdAt;
  String? updatedAt;
  List<Review>? reviews;
  List<dynamic>? availability;

  TopDoctorsModel({
    this.id,
    this.firstName,
    this.secondName,
    this.specialty,
    this.experience,
    this.ratingsAverage,
    this.ratingsQuantity,
    this.about,
    this.certificate,
    this.image,
    this.day,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.reviews,
    this.availability,
  });

  factory TopDoctorsModel.fromJson(Map<String, dynamic> json) =>
      _$TopDoctorsModelFromJson(json);

  Map<String, dynamic> toJson() => _$TopDoctorsModelToJson(this);

  String get fullName => '${firstName ?? ''} ${secondName ?? ''}'.trim();
}

@JsonSerializable()
class Review {
  @JsonKey(name: '_id')
  String? id;
  int? rating;
  User? user;
  String? doctor;

  Review({this.id, this.rating, this.user, this.doctor});

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
  Map<String, dynamic> toJson() => _$ReviewToJson(this);
}

@JsonSerializable()
class User {
  @JsonKey(name: '_id')
  String? id;
  String? name;

  User({this.id, this.name});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
