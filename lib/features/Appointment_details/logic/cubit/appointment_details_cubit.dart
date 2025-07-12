import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/Appointment_details/data/models/appointment_details_response.dart';
import 'package:skin_care_app/features/Appointment_details/data/repo/appointment_details_repo.dart';
import 'package:skin_care_app/features/Appointment_details/logic/cubit/appointment_details_state.dart';

class AppointmentDetailsCubit
    extends Cubit<AppointmentDetailsState<AppointmentDetailsResponse>> {
  final AppointmentDetailsRepo _repo;
  AppointmentDetailsResponse? appointmentDetails;

  AppointmentDetailsCubit(this._repo)
    : super(const AppointmentDetailsState.initial());

  Future<void> getAppointmentDetails(String appointmentId) async {
    emit(const AppointmentDetailsState.loading());

    final result = await _repo.getAppointmentDetails(appointmentId);

    result.when(
      success: (appointmentDetailsResponse) {
        appointmentDetails = appointmentDetailsResponse;
        emit(AppointmentDetailsState.loaded(appointmentDetailsResponse));
      },
      failure: (error) => emit(AppointmentDetailsState.error(error)),
    );
  }
}
