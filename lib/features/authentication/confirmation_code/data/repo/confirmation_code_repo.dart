import 'package:skin_care_app/core/networking/api_error_handler.dart';
import 'package:skin_care_app/core/networking/api_result.dart';
import 'package:skin_care_app/core/networking/api_service.dart';
import 'package:skin_care_app/features/authentication/confirmation_code/data/models/confirmation_code_model.dart';

class ConfirmationCodeRepo {
  ApiService apiService;
  ConfirmationCodeRepo(this.apiService);
  Future<ApiResult<ConfirmationCodeResponse>> verifyResetPassword(
    ConfirmationCodeRequest confirmationCodeRequest,
    String token,
  ) async {
    try {
      final response = await apiService.verifyResetPassword(
        confirmationCodeRequest,
        token,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
