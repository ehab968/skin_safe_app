import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/features/My_Appointments/data/models/appointments_response.dart';
import 'package:skin_care_app/features/My_Appointments/logic/cubit/appointments_cubit.dart';
import 'package:skin_care_app/features/My_Appointments/logic/cubit/appointments_state.dart';
import 'package:skin_care_app/features/My_Appointments/ui/widgets/appointment_case_card.dart';

class AppointmentsBlocBuilder extends StatelessWidget {
  const AppointmentsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentsCubit, AppointmentsState>(
      builder: (context, state) {
        return state.maybeWhen(
          initial: () => const SizedBox(),
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (appointmentsResponse) {
            if (appointmentsResponse.data.isEmpty) {
              return const Center(child: Text('No appointments found'));
            }
            return ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: appointmentsResponse.data.length,
              itemBuilder: (context, index) {
                final appointment = appointmentsResponse.data[index];
                return AppointmentCard(
                  status: _determineStatus(appointment),
                  dateTime: appointment.formattedDateTime,
                  doctorName: _getDoctorName(appointment),
                  specialty: _getDoctorSpecialty(appointment),
                  location: 'Salah Salem Street,\n Ismailia, Egypt',
                  onViewDetails: () {
                    context.pushNamed(
                      Routes.appointmentScreen,
                      arguments: appointment.id,
                    );
                  },
                );
              },
            );
          },
          error:
              (error) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(error.message ?? 'Failed to load appointments'),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        context.read<AppointmentsCubit>().getAppointments();
                      },
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
          orElse: () => const SizedBox(),
        );
      },
    );
  }

  String _determineStatus(AppointmentItem appointment) {
    if (appointment.doctor == null) {
      return 'cancelled'; // Assuming no doctor means cancelled
    }

    try {
      final appointmentDate = DateTime.parse(appointment.date);
      final now = DateTime.now();

      if (appointmentDate.isAfter(now)) {
        return 'upcoming';
      } else {
        return 'past';
      }
    } catch (e) {
      return 'upcoming'; // Default to upcoming if parsing fails
    }
  }

  String _getDoctorName(AppointmentItem appointment) {
    if (appointment.doctor == null) {
      return 'Doctor not assigned';
    }
    return 'Dr. ${appointment.doctor!.firstName} ${appointment.doctor!.secondName}';
  }

  String _getDoctorSpecialty(AppointmentItem appointment) {
    if (appointment.doctor == null) {
      return 'Dermatologist';
    }

    final specialty = appointment.doctor!.specialty;
    if (specialty.length > 30) {
      return '${specialty.substring(0, 30)}...';
    }
    return specialty;
  }
}
