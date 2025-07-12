import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/My_Appointments/logic/cubit/appointments_cubit.dart';
import 'package:skin_care_app/features/My_Appointments/logic/cubit/appointments_state.dart';

class AppointmentsBlocListener extends StatelessWidget {
  const AppointmentsBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppointmentsCubit, AppointmentsState>(
      listener: (context, state) {
        state.maybeWhen(
          error: (apiErrorModel) {
            // Show error message
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(apiErrorModel.message ?? 'Failed to load appointments'),
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
} 