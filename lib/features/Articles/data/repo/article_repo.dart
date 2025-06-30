import 'package:skin_care_app/core/networking/api_error_handler.dart';
import 'package:skin_care_app/core/networking/api_result.dart';
import 'package:skin_care_app/core/networking/api_service.dart';
import 'package:skin_care_app/features/Articles/data/models/article_model.dart';

class ArticleRepo {
  final ApiService apiService;
  ArticleRepo(this.apiService);
  Future<ApiResult<List<ArticleModel>>> getAllArticles() async {
    try {
      final response = await apiService.getAllArticles();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
