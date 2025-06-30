import 'package:skin_care_app/core/networking/api_error_handler.dart';
import 'package:skin_care_app/core/networking/api_result.dart';
import 'package:skin_care_app/core/networking/api_service.dart';
import 'package:skin_care_app/features/authentication/forget_password/data/models/forget_password_model.dart';

class ForgetPasswordRepo {
  ApiService apiService;
  ForgetPasswordRepo(this.apiService);
  Future<ApiResult<ForgetPasswordResponse>> forgetPassword(
    ForgetPasswordRequest forgetPasswordRequest,
  ) async {
    try {
      final response = await apiService.forgetPassword(forgetPasswordRequest);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
