import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/about_doctor_body.dart';
import 'package:skin_care_app/features/home/data/models/top_doctors_model.dart';

class AboutDoctorView extends StatelessWidget {
  const AboutDoctorView({super.key});

  @override
  Widget build(BuildContext context) {
    final doctorData =
        ModalRoute.of(context)!.settings.arguments as TopDoctorsModel;
    return Scaffold(
      body: AboutDoctorBody(doctorData: doctorData),
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: null,
        onTap: (index) => navigateToTab(context, index),
      ),
    );
  }
}
