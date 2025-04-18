import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/widgets/doctor_rate.dart';

class DoctorDetailsColumn extends StatelessWidget {
  const DoctorDetailsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Dr.Hady Helmy',
          style: Styles.font20Black500Weight.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        verticalSpace(height: 8),
        Container(
          width: 125.w,
          height: 24.h,
          decoration: BoxDecoration(
            color: ColorManager.primaryBluelighter,
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: Center(
            child: Text(
              'Dermatologist',
              style: Styles.font16PrimaryBlue400Weight,
            ),
          ),
        ),
        verticalSpace(height: 8),
        Text('12 years experience', style: Styles.font16Black400Weight),
        verticalSpace(height: 8),
        const DoctorRate(),
      ],
    );
  }
}
