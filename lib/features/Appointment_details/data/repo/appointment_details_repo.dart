import 'package:skin_care_app/core/networking/api_error_handler.dart';
import 'package:skin_care_app/core/networking/api_result.dart';
import 'package:skin_care_app/core/networking/api_service.dart';
import 'package:skin_care_app/features/Appointment_details/data/models/appointment_details_response.dart';

class AppointmentDetailsRepo {
  final ApiService apiService;

  AppointmentDetailsRepo(this.apiService);

  Future<ApiResult<AppointmentDetailsResponse>> getAppointmentDetails(
    String appointmentId,
  ) async {
    try {
      final response = await apiService.getAppointmentDetails(appointmentId);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
