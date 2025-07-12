// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationItemModel _$NotificationItemModelFromJson(
        Map<String, dynamic> json) =>
    NotificationItemModel(
      id: json['_id'] as String,
      title: json['title'] as String,
      message: json['message'] as String,
      userId: json['userId'] as String,
      createdAt: json['createdAt'] as String,
      v: (json['__v'] as num?)?.toInt(),
      iconType: json['iconType'] as String?,
    );

Map<String, dynamic> _$NotificationItemModelToJson(
        NotificationItemModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'message': instance.message,
      'userId': instance.userId,
      'createdAt': instance.createdAt,
      '__v': instance.v,
      'iconType': instance.iconType,
    };
