import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';
import 'package:skin_care_app/features/Articles/data/models/article_model.dart';
part 'article_state.freezed.dart';
@freezed
class ArticleState with _$ArticleState {
  const factory ArticleState.initial() = _Initial;
  const factory ArticleState.loading() = ArticaleLoading;
  const factory ArticleState.success(List<ArticleModel> articles) = ArticleSuccess;
  const factory ArticleState.error(ApiErrorModel apiErrorModel) = ArticleError;
}
