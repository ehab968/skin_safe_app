import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class DoctorRate extends StatelessWidget {
  const DoctorRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.yellow, size: 24.r),
        horizontalSpace(width: 6),
        RichText(
          text: TextSpan(
            text: '4.9',
            style: Styles.font16Black400Weight,
            children: [
              TextSpan(
                text: ' (30 reviews)',
                style: Styles.font14Black400Weight.copyWith(
                  color: ColorManager.gray2,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
