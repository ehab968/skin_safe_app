import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/widgets/about_doctor_details.dart';
import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/widgets/certficate_section.dart';

class AboutDoctorSection extends StatelessWidget {
  const AboutDoctorSection({
    super.key,
    required this.aboutDoctorDetails,
    required this.certficateDetails,
  });
  final String aboutDoctorDetails;
  final String certficateDetails;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            AboutDoctordetails(aboutDoctorDetails: aboutDoctorDetails),
            verticalSpace(height: 16),
             CertficateSection(certficateDetails:certficateDetails),
          ],
        ),
      ),
    );
  }
}
