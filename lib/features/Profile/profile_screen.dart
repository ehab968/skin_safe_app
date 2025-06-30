import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/features/Profile/ui/widgets/personal_info.dart';
import 'package:skin_care_app/features/Profile/ui/widgets/profile_info.dart';
import 'package:skin_care_app/features/Profile/ui/widgets/profile_settings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: 4,
        onTap: (index) {
          index == 4 ? null : navigateToTab(context, index);
        },
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: SizedBox(
            height: 3000,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(height: 22.h),
                const ProfileInfo(),
                verticalSpace(height: 18.h),
                Text('Personal info', style: Styles.font16Black700Weight),
                verticalSpace(height: 8.h),
                const PersonalInfo(label: 'Name:', value: 'Muhammed Ali'),
                const PersonalInfo(
                  label: 'Phone:',
                  value: '(20) 10 222 333 44',
                ),
                const PersonalInfo(
                  label: 'Date of birth:',
                  value: '15-Mars-1995',
                ),
                const PersonalInfo(label: 'Gender:', value: 'Male'),
                const PersonalInfo(
                  label: 'Skintone:',
                  value: 'Light to medium',
                ),
                verticalSpace(height: 5.h),
                Text('My account', style: Styles.font16Black700Weight),
                Expanded(child: ProfileSettings()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
