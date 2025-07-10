import 'package:skin_care_app/core/networking/api_error_handler.dart';
import 'package:skin_care_app/core/networking/api_result.dart';
import 'package:skin_care_app/core/networking/api_service.dart';
import 'package:skin_care_app/features/BookingAppointment/data/models/appointment_request.dart';
import 'package:skin_care_app/features/BookingAppointment/data/models/appointment_response.dart';
import 'package:skin_care_app/features/BookingAppointment/data/models/availability_response.dart';
import 'package:skin_care_app/features/Appointment_details/data/models/appointment_details_response.dart';

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

  Future<ApiResult<AvailabilityResponse>> getDoctorAvailability(
    String doctorId,
  ) async {
    try {
      final response = await apiService.getDoctorAvailability(doctorId);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

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
