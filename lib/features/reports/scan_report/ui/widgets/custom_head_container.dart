import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class CustomHeadContainer extends StatelessWidget {
  const CustomHeadContainer({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 27.h,
      decoration: const BoxDecoration(color: ColorManager.lighterGray),
      child: Row(
        children: [
          Container(
            width: 4.w,
            height: 27.h,
            decoration: const BoxDecoration(color: ColorManager.primaryBlue),
          ),
          horizontalSpace(width: 8),
          Text(title, style: Styles.font16Black500Weight),
        ],
      ),
    );
  }
}
