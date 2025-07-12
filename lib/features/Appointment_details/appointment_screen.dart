import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:skin_care_app/core/di/dependancy_injection.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';
import 'package:skin_care_app/features/Appointment_details/logic/cubit/appointment_details_cubit.dart';
import 'package:skin_care_app/features/Appointment_details/logic/cubit/appointment_details_state.dart';
import 'package:skin_care_app/features/Appointment_details/ui/widgets/doctor_info.dart';
import 'package:skin_care_app/features/Appointment_details/ui/widgets/info_note.dart';
import 'package:skin_care_app/features/Appointment_details/ui/widgets/info_row.dart';

class AppointmentScreen extends StatelessWidget {
  final String? appointmentId;

  const AppointmentScreen({super.key, this.appointmentId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = getIt<AppointmentDetailsCubit>();
        // Fetch appointment details with the provided ID or use default for testing
        final idToFetch = appointmentId ?? '686c231c5b884d22f21b92b1';
        cubit.getAppointmentDetails(idToFetch);
        return cubit;
      },
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
          centerTitle: true,
          title: Text(
            'Appointment Details',
            style: Styles.font18Black600Weight,
          ),
        ),
        bottomNavigationBar: AppBottomNavigationBar(
          currentIndex: 1, // Assuming we're in the appointments tab
          onTap: (index) => navigateToTab(context, index),
        ),
        body: SafeArea(
          child: BlocBuilder<AppointmentDetailsCubit, AppointmentDetailsState>(
            builder: (context, state) {
              return state.when(
                initial:
                    () => const Center(
                      child: Text('Loading appointment details...'),
                    ),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (appointmentResponse) {
                  final appointmentData = appointmentResponse.data;
                  final doctor = appointmentData.doctor;

                  // Format the date
                  final dateString = appointmentData.date;
                  String formattedDate = 'Date not available';
                  try {
                    final date = DateTime.parse(dateString);
                    formattedDate = DateFormat('dd MMM, EEEE').format(date);
                  } catch (e) {
                    // Fallback to original string if parsing fails
                    formattedDate = dateString;
                  }

                  return SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 32,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          verticalSpace(height: 22.h),
                          DoctorInfo(
                            doctorName: doctor.fullName,
                            specialty: doctor.specialty,
                            imageUrl: doctor.image,
                          ),
                          verticalSpace(height: 55.h),
                          InfoRow(label: 'Date:', value: formattedDate),
                          InfoRow(
                            label: 'Time:',
                            value: appointmentData.timeSlot,
                          ),
                          const InfoRow(
                            label: 'Clinic number:',
                            value: '(064) 333 222',
                            isLink: false,
                          ),
                          const InfoRow(
                            label: 'Address:',
                            value: 'Salah Salem Street, Ismailia, Egypt',
                            isLink: true,
                            url:
                                'https://www.google.com/maps/place/Salah+Salem+Street,+Ismailia,+Egypt',
                          ),
                          verticalSpace(height: 36.h),
                          const InfoNote(),
                          verticalSpace(height: 110.h),
                          CustomTextButton(
                            backgroundColor: ColorManager.primaryBlue,
                            textName: 'Cancel Appointment',
                            height: 50.h,
                            width: double.infinity,
                            textStyle: Styles.font16White500Weight,
                            onPressed: () {
                              // Handle appointment cancellation
                              _showCancellationDialog(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
                error:
                    (error) => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Failed to load appointment details',
                            style: Styles.font16Black500Weight,
                          ),
                          verticalSpace(height: 8.h),
                          Text(
                            error.message ?? 'Unknown error',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 14.sp,
                            ),
                          ),
                          verticalSpace(height: 16.h),
                          ElevatedButton(
                            onPressed: () {
                              final idToFetch =
                                  appointmentId ?? '686c231c5b884d22f21b92b1';
                              context
                                  .read<AppointmentDetailsCubit>()
                                  .getAppointmentDetails(idToFetch);
                            },
                            child: const Text('Retry'),
                          ),
                        ],
                      ),
                    ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _showCancellationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Cancel Appointment'),
            content: const Text(
              'Are you sure you want to cancel this appointment?',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () {
                  // TODO: Implement appointment cancellation
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Appointment cancelled')),
                  );
                },
                style: TextButton.styleFrom(foregroundColor: Colors.red),
                child: const Text('Yes, Cancel'),
              ),
            ],
          ),
    );
  }
}
