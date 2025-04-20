import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';
import 'package:skin_care_app/features/Appointment_details/ui/widgets/doctor_info.dart';
import 'package:skin_care_app/features/Appointment_details/ui/widgets/info_note.dart';
import 'package:skin_care_app/features/Appointment_details/ui/widgets/info_row.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: null,
        onTap: (index) => navigateToTab(context, index),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(height: 22.h),
              const DoctorInfo(),
              verticalSpace(height: 55.h),
              const InfoRow(label: 'Date:', value: '12 Mars, Wednesday'),
              const InfoRow(label: 'Time:', value: '10:00 - 10:30'),
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
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
