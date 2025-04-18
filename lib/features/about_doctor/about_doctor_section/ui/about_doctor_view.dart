import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/about_doctor_body.dart';

class AboutDoctorView extends StatelessWidget {
  const AboutDoctorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const AboutDoctorBody(),
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: 4,
        onTap: (index) => navigateToTab(context, index),
      ),
    );
  }
}
