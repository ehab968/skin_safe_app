import 'package:json_annotation/json_annotation.dart';

part 'notification_response.g.dart';

@JsonSerializable()
class NotificationItemModel {
  @JsonKey(name: '_id')
  final String id;
  final String title;
  final String message;
  final String userId;
  final String createdAt;
  @JsonKey(name: '__v')
  final int? v;
  final String? iconType;

  NotificationItemModel({
    required this.id,
    required this.title,
    required this.message,
    required this.userId,
    required this.createdAt,
    this.v,
    this.iconType,
  });

  factory NotificationItemModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationItemModelToJson(this);
} 