import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';
import 'package:skin_care_app/features/Appointment_details/ui/widgets/doctor_info.dart';
import 'package:skin_care_app/features/Appointment_details/ui/widgets/info_note.dart';
import 'package:skin_care_app/features/Appointment_details/ui/widgets/info_row.dart';
import 'package:skin_care_app/features/Profile/ui/widgets/personal_info.dart';
import 'package:skin_care_app/features/Profile/ui/widgets/profile_info.dart';
import 'package:skin_care_app/features/Profile/ui/widgets/profile_settings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: SingleChildScrollView(
            child: Container(
              height: 3000,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(height: 22.h),
                  ProfileInfo(),
                  verticalSpace(height: 18.h),
                  Text('Personal info', style: Styles.font16Black700Weight),
                  verticalSpace(height: 8.h),
                  PersonalInfo(label: 'Name:', value: 'Muhammed Ali'),
                  PersonalInfo(label: 'Phone:', value: '(20) 10 222 333 44'),
                  PersonalInfo(
                    label: 'Date of birth:',
                    value: '  15-Mars-1995',
                  ),
                  PersonalInfo(label: 'Gender:', value: 'Male'),
                  PersonalInfo(label: 'Skintone:', value: 'Light to medium'),
                  verticalSpace(height: 5.h),
                  Text('My account', style: Styles.font16Black700Weight),
                  Expanded(child: MyMenuPage()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
