import 'package:skin_care_app/core/networking/api_error_handler.dart';
import 'package:skin_care_app/core/networking/api_result.dart';
import 'package:skin_care_app/core/networking/api_service.dart';
import 'package:skin_care_app/features/authentication/verfication_code/data/models/verfication_request.dart';
import 'package:skin_care_app/features/authentication/verfication_code/data/models/verfication_response.dart';

class VerficatiionRepo {
  final ApiService apiService;
  VerficatiionRepo(this.apiService);
  Future<ApiResult<VerficationResponse>> verficationCode(
      VerficationRequest verficationRequest) async {
    try {
      final response = await apiService.verficationCode(verficationRequest);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}