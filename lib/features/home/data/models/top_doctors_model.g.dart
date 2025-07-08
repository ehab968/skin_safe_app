// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_doctors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorsResponse _$DoctorsResponseFromJson(Map<String, dynamic> json) =>
    DoctorsResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => TopDoctorsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DoctorsResponseToJson(DoctorsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

TopDoctorsModel _$TopDoctorsModelFromJson(Map<String, dynamic> json) =>
    TopDoctorsModel(
      id: json['_id'] as String?,
      firstName: json['firstName'] as String?,
      secondName: json['secondName'] as String?,
      specialty: json['specialty'] as String?,
      experience: (json['experience'] as num?)?.toInt(),
      ratingsAverage: (json['ratingsAverage'] as num?)?.toDouble(),
      ratingsQuantity: (json['ratingsQuantity'] as num?)?.toInt(),
      about: json['about'] as String?,
      certificate: json['certificate'] as String?,
      image: json['image'] as String?,
      day: json['day'] as String?,
      role: json['role'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
      availability: json['availability'] as List<dynamic>?,
    );

Map<String, dynamic> _$TopDoctorsModelToJson(TopDoctorsModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'firstName': instance.firstName,
      'secondName': instance.secondName,
      'specialty': instance.specialty,
      'experience': instance.experience,
      'ratingsAverage': instance.ratingsAverage,
      'ratingsQuantity': instance.ratingsQuantity,
      'about': instance.about,
      'certificate': instance.certificate,
      'image': instance.image,
      'day': instance.day,
      'role': instance.role,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'reviews': instance.reviews,
      'availability': instance.availability,
    };

Review _$ReviewFromJson(Map<String, dynamic> json) => Review(
      id: json['_id'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      doctor: json['doctor'] as String?,
    );

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
      '_id': instance.id,
      'rating': instance.rating,
      'user': instance.user,
      'doctor': instance.doctor,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['_id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
    };
