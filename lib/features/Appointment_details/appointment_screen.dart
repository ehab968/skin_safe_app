import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';
import 'package:skin_care_app/features/Appointment_details/ui/widgets/doctor_info.dart';
import 'package:skin_care_app/features/Appointment_details/ui/widgets/info_note.dart';
import 'package:skin_care_app/features/Appointment_details/ui/widgets/info_row.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(height: 22.h),
              DoctorInfo(),
              verticalSpace(height: 55.h),
              InfoRow(label: 'Date:', value: '12 Mars, Wednesday'),
              InfoRow(label: 'Time:', value: '10:00 - 10:30'),
              InfoRow(
                label: 'Clinic number:',
                value: '(064) 333 222',
                isLink: false,
              ),
              InfoRow(
                label: 'Address:',
                value: 'Salah Salem Street, Ismailia, Egypt',
                isLink: true,
                url:
                    'https://www.google.com/maps/place/Salah+Salem+Street,+Ismailia,+Egypt',
              ),
              verticalSpace(height: 36.h),
              InfoNote(),
              verticalSpace(height: 110.h),
              CustomTextButton(
            textName: 'Cancel Appointment',
            height: 50.h,
            width: double.infinity,
            textStyle: Styles.font16White500Weight,
            onPressed: () {
              
            },
          ),
            ],
          ),
        ),
      ),
    );
  }
}
