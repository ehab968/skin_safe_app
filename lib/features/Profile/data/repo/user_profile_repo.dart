import 'package:skin_care_app/core/helper/constants.dart';
import 'package:skin_care_app/core/helper/shared_pref_helper.dart';
import 'package:skin_care_app/core/networking/api_error_handler.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';
import 'package:skin_care_app/core/networking/api_result.dart';
import 'package:skin_care_app/core/networking/api_service.dart';
import 'package:skin_care_app/features/Profile/data/models/user_profile_model.dart';

class UserProfileRepo {
  final ApiService apiService;
  UserProfileRepo(this.apiService);

  Future<ApiResult<UserProfileData>> getUserProfile() async {
    try {
      // Get user ID from shared preferences
      final userId = await SharedPrefHelper.getString(SharedPrefKeys.userId);

      if (userId.isEmpty) {
        return ApiResult.failure(
          ApiErrorModel(message: 'User ID not found. Please login again.'),
        );
      }

      // Make API call - token will be automatically added by DioFactory interceptor
      final response = await apiService.getUserProfile(userId);

      if (response.data != null) {
        return ApiResult.success(response.data!);
      } else {
        return ApiResult.failure(
          ApiErrorModel(message: 'User profile data not found'),
        );
      }
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
