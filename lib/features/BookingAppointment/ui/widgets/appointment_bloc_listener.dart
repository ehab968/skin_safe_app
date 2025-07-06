import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/features/BookingAppointment/logic/cubit/appointment_cubit.dart';
import 'package:skin_care_app/features/BookingAppointment/logic/cubit/appointment_state.dart';

class AppointmentBlocListener extends StatelessWidget {
  const AppointmentBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppointmentCubit, AppointmentState>(
      listenWhen:
          (previous, current) =>
              current is AppointmentLoading ||
              current is AppointmentSuccess ||
              current is AppointmentError,
      listener: (context, state) {
        state.maybeWhen(
          loading: () => dataLoading(context),
          success: (appointmentResponse) {
            // Hide loading
            Navigator.pop(context);

            // Show success confirmation dialog
            showAppointmentConfirmationDialog(context);
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
          orElse: () {},
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showAppointmentConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.check_circle, color: Colors.green, size: 60),
              const SizedBox(height: 16),
              const Text(
                'Appointment Booked Successfully!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const Text(
                'Your appointment has been confirmed.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        context.pushNamedAndRemoveUntil(
                          Routes.appointmentScreen,
                          predicate: (route) => false,
                        );
                      },
                      child: const Text('View Details'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        context.pushNamedAndRemoveUntil(
                          Routes.homeView,
                          predicate: (route) => false,
                        );
                      },
                      child: const Text('Back to Home'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
