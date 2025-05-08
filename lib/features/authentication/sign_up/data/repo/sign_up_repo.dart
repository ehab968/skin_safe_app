import 'package:skin_care_app/core/networking/api_error_handler.dart';
import 'package:skin_care_app/core/networking/api_result.dart';
import 'package:skin_care_app/core/networking/api_service.dart';
import 'package:skin_care_app/features/authentication/sign_up/data/models/signup_request.dart';
import 'package:skin_care_app/features/authentication/sign_up/data/models/signup_response.dart';

class SignUpRepo {
  final ApiService apiService;
  SignUpRepo(this.apiService);
  Future<ApiResult<SignupResponse>> signUp(SignupRequest signupRequest) async {
    try {
      final response = await apiService.signUp(signupRequest);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
