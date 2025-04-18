import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       Container(
  width: 105.w,
  height: 105.h,
  decoration: BoxDecoration(
    image: const DecorationImage(
      image: AssetImage('assets/images/doctorMale.jpg'),
      fit: BoxFit.cover,
    ),
    borderRadius: BorderRadius.circular(12), 
  ),
),

        horizontalSpace(width: 32.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(
              'Dr.Hady Helmy',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
            ),
            verticalSpace(height: 8.h),
           Container(
  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
  decoration: BoxDecoration(
    color: ColorManager.primaryBlue.withAlpha(42), 
    borderRadius: BorderRadius.circular(9), 
  ),
  child: const Text(
    'Dermatologist',
    style: TextStyle(
      color: ColorManager.primaryBlue, 
      fontWeight: FontWeight.w400,
    ),
  ),
),

          ],
        ),
      ],
    );
  }
}
