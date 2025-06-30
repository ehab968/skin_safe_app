// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleModel _$ArticleModelFromJson(Map<String, dynamic> json) => ArticleModel(
      id: json['id'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      content: json['content'] as String?,
      author: json['author'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$ArticleModelToJson(ArticleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'content': instance.content,
      'author': instance.author,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
