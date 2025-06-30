import 'package:skin_care_app/core/networking/api_error_handler.dart';
import 'package:skin_care_app/core/networking/api_result.dart';
import 'package:skin_care_app/core/networking/api_service.dart';
import 'package:skin_care_app/features/home/data/models/top_doctors_model.dart';

class TopDoctorsRepo {
  final ApiService apiService;
  TopDoctorsRepo(this.apiService);

  Future<ApiResult<List<TopDoctorsModel>>> getAllDoctors() async {
    try {
      final response = await apiService.getAllDoctors();

      // Sort doctors by rating (descending) and take top 5
      final sortedDoctors = response.data ?? [];
      sortedDoctors.sort((a, b) {
        final ratingA = a.ratingsAverage ?? 0.0;
        final ratingB = b.ratingsAverage ?? 0.0;
        return ratingB.compareTo(ratingA);
      });

      final topDoctors = sortedDoctors.take(5).toList();

      return ApiResult.success(topDoctors);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
