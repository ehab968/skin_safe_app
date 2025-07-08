import 'package:skin_care_app/core/networking/api_error_handler.dart';
import 'package:skin_care_app/core/networking/api_result.dart';
import 'package:skin_care_app/core/networking/api_service.dart';
import 'package:skin_care_app/features/BookingAppointment/data/models/appointment_request.dart';
import 'package:skin_care_app/features/BookingAppointment/data/models/appointment_response.dart';

class AppointmentRepo {
  final ApiService apiService;

  AppointmentRepo(this.apiService);

  Future<ApiResult<AppointmentResponse>> bookAppointment(
    AppointmentRequest appointmentRequest,
  ) async {
    try {
      final response = await apiService.bookAppointment(appointmentRequest);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
