import 'package:skin_care_app/core/networking/api_error_handler.dart';
import 'package:skin_care_app/core/networking/api_result.dart';
import 'package:skin_care_app/core/networking/api_service.dart';
import 'package:skin_care_app/features/home/data/models/uv_index_model.dart';

class UVIndexRepo {
  final ApiService apiService;
  UVIndexRepo(this.apiService);

  Future<ApiResult<UVIndexData>> getUVIndex({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final response = await apiService.getUVIndex(latitude, longitude);

      if (response.success && response.data != null) {
        return ApiResult.success(response.data!);
      } else {
        return ApiResult.failure(
          ApiErrorHandler.handle(Exception('Failed to fetch UV index data')),
        );
      }
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
