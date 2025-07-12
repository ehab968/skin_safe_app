import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class AboutDoctordetails extends StatelessWidget {
  const AboutDoctordetails({super.key, required this.aboutDoctorDetails});
  final String aboutDoctorDetails;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('About Doctor', style: Styles.font16Black500Weight),
        verticalSpace(height: 8),
        Text(aboutDoctorDetails, style: Styles.font14darkGray400Weight),
      ],
    );
  }
}
