import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/widgets/doctor_details_column.dart';

class FirstDoctorDetailsSection extends StatelessWidget {
  const FirstDoctorDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150.w,
          height: 150.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/portrait-male-doctor 2.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        horizontalSpace(width: 31),
        const DoctorDetailsColumn(),
      ],
    );
  }
}
