import 'package:json_annotation/json_annotation.dart';
part 'article_model.g.dart';
@JsonSerializable()
class ArticleModel {
  String? id;
  String? title;
  String? image;
  String? content;
  String? author;
  String? createdAt;
  String? updatedAt;


  ArticleModel({
    this.id,
    this.title,
    this.image,
    this.content,
    this.author,
    this.createdAt,
    this.updatedAt,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);
}
