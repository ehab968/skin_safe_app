import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/features/BookingAppointment/logic/cubit/appointment_cubit.dart';
import 'package:skin_care_app/features/BookingAppointment/logic/cubit/appointment_state.dart';
import 'package:skin_care_app/features/BookingAppointment/ui/widgets/appointment_confirmation.dart';
import 'package:intl/intl.dart';

class AppointmentBlocListener extends StatelessWidget {
  const AppointmentBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppointmentCubit, AppointmentState>(
      listenWhen:
          (previous, current) =>
              current is AppointmentLoading ||
              current is AppointmentSuccess ||
              current is AppointmentError ||
              current is AvailabilityLoaded,
      listener: (context, state) {
        state.maybeWhen(
          loading: () => dataLoading(context),
          success: (appointmentResponse) {
            // Hide loading
            Navigator.pop(context);

            // Get appointment details from cubit
            final cubit = context.read<AppointmentCubit>();
            final doctorName = _getDoctorName(cubit);
            final formattedDate = _formatDate(cubit.selectedDate);
            final timeSlot = cubit.selectedTimeSlot;

            // Show success confirmation dialog
            showAppointmentConfirmationDialog(
              context,
              doctorName: doctorName,
              appointmentDate: formattedDate,
              appointmentTime: timeSlot,
            );
          },
          error: (apiErrorModel) {
            // Hide loading
            Navigator.pop(context);

            // Show error message
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  apiErrorModel.message ?? 'Failed to book appointment',
                ),
                backgroundColor: Colors.red,
              ),
            );
          },
          availabilityLoaded: (availabilityResponse) {
            // Show success message for availability loading
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Doctor availability loaded successfully'),
                backgroundColor: Colors.green,
                duration: Duration(seconds: 2),
              ),
            );
          },
          orElse: () {},
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showAppointmentConfirmationDialog(
    BuildContext context, {
    String? doctorName,
    String? appointmentDate,
    String? appointmentTime,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AppointmentConfirmationDialog(
          doctorName: doctorName,
          appointmentDate: appointmentDate,
          appointmentTime: appointmentTime,
        );
      },
    );
  }

  String? _getDoctorName(AppointmentCubit cubit) {
    // Use the doctor's full name from the selected doctor model
    if (cubit.selectedDoctor != null) {
      return cubit.doctorFullName;
    }
    // Fallback if no doctor model is available
    return 'Doctor';
  }

  String? _formatDate(DateTime? date) {
    if (date == null) return null;
    return DateFormat('MMM dd, yyyy').format(date);
  }
}
