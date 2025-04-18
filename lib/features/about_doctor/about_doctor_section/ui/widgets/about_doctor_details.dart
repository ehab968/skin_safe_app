import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class AboutDoctordetails extends StatelessWidget {
  const AboutDoctordetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('About Doctor', style: Styles.font16Black500Weight),
        verticalSpace(height: 8),
        Text(
          'a board-certified dermatologist with 12 years of experience in diagnosing and treating a wide range of skin conditions. My expertise include acne, skin cancer, eczema, psoriasis, pigmentation disorders, skin allergies.I prioritize personalized care, evidence-basedtreatments and the latest dermatological advancements to help patients achieve healthy, radiant skin. Whether you need medical treatment or aesthetic skincare solutions, I am here to provide expert guidance tailored to your needs.  ',
          style: Styles.font14darkGray400Weight,
        ),
      ],
    );
  }
}
