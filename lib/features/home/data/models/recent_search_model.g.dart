// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecentSearchModel _$RecentSearchModelFromJson(Map<String, dynamic> json) =>
    RecentSearchModel(
      id: json['id'] as String,
      name: json['name'] as String,
      specialty: json['specialty'] as String,
      ratingsAverage: (json['ratingsAverage'] as num).toDouble(),
      image: json['image'] as String?,
      searchedAt: DateTime.parse(json['searchedAt'] as String),
    );

Map<String, dynamic> _$RecentSearchModelToJson(RecentSearchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'specialty': instance.specialty,
      'ratingsAverage': instance.ratingsAverage,
      'image': instance.image,
      'searchedAt': instance.searchedAt.toIso8601String(),
    };
