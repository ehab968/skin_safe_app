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
      // Get user ID and token from shared preferences
      final userId = await SharedPrefHelper.getString(SharedPrefKeys.userId);
      final token = await SharedPrefHelper.getString(SharedPrefKeys.userToken);

      if (userId.isEmpty) {
        return ApiResult.failure(
          ApiErrorModel(message: 'User ID not found. Please login again.'),
        );
      }

      if (token.isEmpty) {
        return ApiResult.failure(
          ApiErrorModel(
            message: 'Authentication token not found. Please login again.',
          ),
        );
      }

      // Make API call with Bearer token
      final response = await apiService.getUserProfile(userId, 'Bearer $token');

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
