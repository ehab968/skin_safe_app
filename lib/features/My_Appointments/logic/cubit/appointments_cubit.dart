import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/My_Appointments/data/models/appointments_response.dart';
import 'package:skin_care_app/features/My_Appointments/data/repo/appointments_repo.dart';
import 'package:skin_care_app/features/My_Appointments/logic/cubit/appointments_state.dart';

class AppointmentsCubit extends Cubit<AppointmentsState> {
  final AppointmentsRepo _repo;
  AppointmentsResponse? appointmentsResponse;

  AppointmentsCubit(this._repo) : super(const AppointmentsState.initial());

  Future<void> getAppointments() async {
    emit(const AppointmentsState.loading());
    
    final result = await _repo.getAppointments();
    
    result.when(
      success: (response) {
        appointmentsResponse = response;
        emit(AppointmentsState.success(response));
      },
      failure: (error) {
        emit(AppointmentsState.error(error));
      },
    );
  }
}
