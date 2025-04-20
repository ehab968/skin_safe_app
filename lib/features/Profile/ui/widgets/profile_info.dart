import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 45.sp,
          backgroundImage: const AssetImage('assets/images/profile_image.jpg'),
        ),

        horizontalSpace(width: 32.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Muhammed Ali',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
            verticalSpace(height: 8.h),
            Text(
              'muhammedali1111@gmail.com',
              style: Styles.font13MainGray400Weight,
            ),
          ],
        ),
      ],
    );
  }
}
