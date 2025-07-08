import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';
import 'package:skin_care_app/features/BookingAppointment/data/models/appointment_request.dart';
import 'package:skin_care_app/features/BookingAppointment/data/repo/appointment_repo.dart';
import 'package:skin_care_app/features/BookingAppointment/logic/cubit/appointment_state.dart';

class AppointmentCubit extends Cubit<AppointmentState> {
  final AppointmentRepo appointmentRepo;

  AppointmentCubit(this.appointmentRepo)
    : super(const AppointmentState.initial());

  // Controllers for date and time selection
  DateTime? selectedDate;
  String? selectedTimeSlot;
  String? selectedDoctorId;

  void setSelectedDate(DateTime date) {
    selectedDate = date;
  }

  void setSelectedTimeSlot(String timeSlot) {
    selectedTimeSlot = timeSlot;
  }

  void setSelectedDoctorId(String doctorId) {
    selectedDoctorId = doctorId;
  }

  Future<void> bookAppointment() async {
    // Debug logging
    print('DEBUG: selectedDoctorId = $selectedDoctorId');
    print('DEBUG: selectedDate = $selectedDate');
    print('DEBUG: selectedTimeSlot = $selectedTimeSlot');

    if (selectedDoctorId == null ||
        selectedDate == null ||
        selectedTimeSlot == null) {
      String errorMessage = 'Please select ';
      List<String> missing = [];
      if (selectedDoctorId == null) missing.add('doctor');
      if (selectedDate == null) missing.add('date');
      if (selectedTimeSlot == null) missing.add('time slot');
      errorMessage += missing.join(', ');

      emit(AppointmentState.error(ApiErrorModel(message: errorMessage)));
      return;
    }

    emit(const AppointmentState.loading());

    // Format date to YYYY-MM-DD
    final formattedDate =
        '${selectedDate!.year}-${selectedDate!.month.toString().padLeft(2, '0')}-${selectedDate!.day.toString().padLeft(2, '0')}';

    final appointmentRequest = AppointmentRequest(
      doctor: selectedDoctorId!,
      date: formattedDate,
      timeSlot: selectedTimeSlot!,
    );

    final response = await appointmentRepo.bookAppointment(appointmentRequest);

    if (isClosed) return;

    response.when(
      success:
          (appointmentResponse) =>
              emit(AppointmentState.success(appointmentResponse)),
      failure: (apiErrorModel) => emit(AppointmentState.error(apiErrorModel)),
    );
  }

  // Reset all selections
  void resetSelections() {
    selectedDate = null;
    selectedTimeSlot = null;
    selectedDoctorId = null;
    emit(const AppointmentState.initial());
  }
}
