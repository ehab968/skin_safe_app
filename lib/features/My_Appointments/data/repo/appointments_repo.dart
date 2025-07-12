import 'package:skin_care_app/core/networking/api_error_handler.dart';
import 'package:skin_care_app/core/networking/api_result.dart';
import 'package:skin_care_app/core/networking/api_service.dart';
import 'package:skin_care_app/features/My_Appointments/data/models/appointments_response.dart';

class AppointmentsRepo {
  final ApiService _apiService;

  AppointmentsRepo(this._apiService);

  Future<ApiResult<AppointmentsResponse>> getAppointments() async {
    try {
      final response = await _apiService.getAppointments();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
} 