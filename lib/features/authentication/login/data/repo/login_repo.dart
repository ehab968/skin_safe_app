import 'package:skin_care_app/core/networking/api_error_handler.dart';
import 'package:skin_care_app/core/networking/api_result.dart';
import 'package:skin_care_app/core/networking/api_service.dart';
import 'package:skin_care_app/features/authentication/login/data/models/login_request.dart';
import 'package:skin_care_app/features/authentication/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService apiService;
  LoginRepo(this.apiService);
  Future<ApiResult<LoginResponse>> logIn(LoginRequest loginRequest) async {
    try {
      final response = await apiService.logIn(loginRequest);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}