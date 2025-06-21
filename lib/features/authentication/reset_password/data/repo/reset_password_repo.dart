import 'package:skin_care_app/core/networking/api_error_handler.dart';
import 'package:skin_care_app/core/networking/api_result.dart';
import 'package:skin_care_app/core/networking/api_service.dart';
import 'package:skin_care_app/features/authentication/reset_password/data/models/reset_password_model.dart';

class ResetPasswordRepo {
  ApiService apiService;
  ResetPasswordRepo(this.apiService);
  Future<ApiResult<ResetPasswordResponse>> resetPassword(
    ResetPasswordRequest resetPasswordRequest,
    String token,
  ) async {
    try {
      final response = await apiService.resetPassword(
        resetPasswordRequest,
        token,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
