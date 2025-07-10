import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/di/dependancy_injection.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/features/My_Appointments/logic/cubit/appointments_cubit.dart';
import 'package:skin_care_app/features/My_Appointments/ui/widgets/appointments_bloc_builder.dart';
import 'package:skin_care_app/features/My_Appointments/ui/widgets/appointments_bloc_listener.dart';

class MyAppointmentScreen extends StatelessWidget {
  const MyAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AppointmentsCubit>()..getAppointments(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Appointments', style: Styles.font18Black600Weight),
          centerTitle: true,
          elevation: 0,
        ),
        bottomNavigationBar: AppBottomNavigationBar(
          currentIndex: 1, // Assuming 1 is the index for appointments tab
          onTap: (index) => navigateToTab(context, index),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(16.h),
                child: Text(
                  'Your scheduled appointments',
                  style: Styles.font16Black500Weight,
                ),
              ),
              const Expanded(child: AppointmentsBlocBuilder()),
            ],
          ),
        ),
      ),
    );
  }
}
