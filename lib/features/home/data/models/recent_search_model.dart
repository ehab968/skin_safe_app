import 'package:json_annotation/json_annotation.dart';

part 'recent_search_model.g.dart';

@JsonSerializable()
class RecentSearchModel {
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'specialty')
  final String specialty;
  @JsonKey(name: 'ratingsAverage')
  final double ratingsAverage;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'searchedAt')
  final DateTime searchedAt;

  RecentSearchModel({
    required this.id,
    required this.name,
    required this.specialty,
    required this.ratingsAverage,
    this.image,
    required this.searchedAt,
  });

  factory RecentSearchModel.fromJson(Map<String, dynamic> json) =>
      _$RecentSearchModelFromJson(json);

  Map<String, dynamic> toJson() => _$RecentSearchModelToJson(this);

  // Create from TopDoctorsModel
  factory RecentSearchModel.fromDoctorModel({
    required String id,
    required String name,
    required String specialty,
    required double ratingsAverage,
    String? image,
  }) {
    return RecentSearchModel(
      id: id,
      name: name,
      specialty: specialty,
      ratingsAverage: ratingsAverage,
      image: image,
      searchedAt: DateTime.now(),
    );
  }
}
