import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';
import 'package:skin_care_app/features/BookingAppointment/data/models/appointment_request.dart';
import 'package:skin_care_app/features/BookingAppointment/data/models/availability_response.dart';
import 'package:skin_care_app/features/Appointment_details/data/models/appointment_details_response.dart';
import 'package:skin_care_app/features/BookingAppointment/data/repo/appointment_repo.dart';
import 'package:skin_care_app/features/BookingAppointment/logic/cubit/appointment_state.dart';
import 'package:skin_care_app/features/home/data/models/top_doctors_model.dart';

class AppointmentCubit extends Cubit<AppointmentState> {
  final AppointmentRepo appointmentRepo;

  AppointmentCubit(this.appointmentRepo)
    : super(const AppointmentState.initial());

  // Controllers for date and time selection
  DateTime? selectedDate;
  String? selectedTimeSlot;
  String? selectedDoctorId;
  TopDoctorsModel? selectedDoctor;
  AvailabilityResponse? doctorAvailability;
  AppointmentDetailsResponse? appointmentDetails;
  List<DateTime> availableDates = [];

  void setSelectedDate(DateTime date) {
    selectedDate = date;
  }

  void setSelectedTimeSlot(String timeSlot) {
    selectedTimeSlot = timeSlot;
  }

  void setSelectedDoctorId(String doctorId) {
    selectedDoctorId = doctorId;
  }

  void setSelectedDoctor(TopDoctorsModel doctor) {
    selectedDoctor = doctor;
    selectedDoctorId = doctor.id;
  }

  String get doctorFullName {
    if (selectedDoctor != null) {
      final firstName = selectedDoctor!.firstName ?? '';
      final secondName = selectedDoctor!.secondName ?? '';
      return 'Dr. ${firstName.trim()} ${secondName.trim()}'.trim();
    }
    return 'Doctor';
  }

  // Fetch doctor availability
  Future<void> fetchDoctorAvailability(String doctorId) async {
    emit(const AppointmentState.availabilityLoading());

    final response = await appointmentRepo.getDoctorAvailability(doctorId);

    if (isClosed) return;

    response.when(
      success: (availabilityResponse) {
        doctorAvailability = availabilityResponse;
        _generateAvailableDates();
        emit(AppointmentState.availabilityLoaded(availabilityResponse));
      },
      failure: (apiErrorModel) => emit(AppointmentState.error(apiErrorModel)),
    );
  }

  // Fetch appointment details
  Future<void> fetchAppointmentDetails(String appointmentId) async {
    emit(const AppointmentState.appointmentDetailsLoading());

    final response = await appointmentRepo.getAppointmentDetails(appointmentId);

    if (isClosed) return;

    response.when(
      success: (appointmentDetailsResponse) {
        appointmentDetails = appointmentDetailsResponse;
        emit(
          AppointmentState.appointmentDetailsLoaded(appointmentDetailsResponse),
        );
      },
      failure: (apiErrorModel) => emit(AppointmentState.error(apiErrorModel)),
    );
  }

  // Generate available dates based on doctor's availability
  void _generateAvailableDates() {
    if (doctorAvailability == null) return;

    availableDates.clear();
    final now = DateTime.now();
    final availableDays =
        doctorAvailability!.availability
            .map((dayAvail) => _dayNameToWeekday(dayAvail.day.toLowerCase()))
            .where((day) => day != null)
            .cast<int>()
            .toList();

    // Generate available dates for the next 3 months
    for (int i = 0; i < 90; i++) {
      final date = now.add(Duration(days: i));
      if (availableDays.contains(date.weekday)) {
        availableDates.add(date);
      }
    }
  }

  // Convert day name to weekday number (1 = Monday, 7 = Sunday)
  int? _dayNameToWeekday(String dayName) {
    switch (dayName) {
      case 'monday':
        return 1;
      case 'tuesday':
        return 2;
      case 'wednesday':
        return 3;
      case 'thursday':
        return 4;
      case 'friday':
        return 5;
      case 'saturday':
        return 6;
      case 'sunday':
        return 7;
      default:
        return null;
    }
  }

  // Get available time slots for selected date
  List<String> getAvailableTimeSlotsForDate(DateTime date) {
    if (doctorAvailability == null) return [];

    final dayName = _weekdayToDayName(date.weekday);
    final dayAvailability = doctorAvailability!.availability.firstWhere(
      (dayAvail) => dayAvail.day.toLowerCase() == dayName,
      orElse: () => DayAvailability(id: '', day: '', slug: '', timeSlots: []),
    );

    return dayAvailability.timeSlots;
  }

  // Convert weekday number to day name
  String _weekdayToDayName(int weekday) {
    switch (weekday) {
      case 1:
        return 'monday';
      case 2:
        return 'tuesday';
      case 3:
        return 'wednesday';
      case 4:
        return 'thursday';
      case 5:
        return 'friday';
      case 6:
        return 'saturday';
      case 7:
        return 'sunday';
      default:
        return '';
    }
  }

  // Check if a date is available for booking
  bool isDateAvailable(DateTime date) {
    return availableDates.any(
      (availableDate) =>
          availableDate.year == date.year &&
          availableDate.month == date.month &&
          availableDate.day == date.day,
    );
  }

  Future<void> bookAppointment() async {
    if (selectedDoctorId == null ||
        selectedDate == null ||
        selectedTimeSlot == null) {
      emit(
        AppointmentState.error(
          ApiErrorModel(message: 'Please select doctor, date and time slot'),
        ),
      );
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
    selectedDoctor = null;
    doctorAvailability = null;
    appointmentDetails = null;
    availableDates.clear();
    emit(const AppointmentState.initial());
  }
}
