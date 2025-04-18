import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';

class ToggleButtonOnboarding extends StatelessWidget {
  const ToggleButtonOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 26.w,
          height: 8.h,
          decoration: BoxDecoration(
            color: ColorManager.primaryBlue,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        // SizedBox(width: 4.w),
        horizontalSpace(width: 4),
        Container(
          width: 8.w,
          height: 8.h,
          decoration: const BoxDecoration(
            color: ColorManager.morelightergray,
            shape: BoxShape.circle,
          ),
        ),
        horizontalSpace(width: 4),
        Container(
          width: 8.w,
          height: 8.h,
          decoration: const BoxDecoration(
            color: ColorManager.morelightergray,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}

class secondtoggleButton extends StatelessWidget {
  const secondtoggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 8.w,
          height: 8.h,
          decoration: const BoxDecoration(
            color: ColorManager.morelightergray,
            shape: BoxShape.circle,
          ),
        ),
        horizontalSpace(width: 4),
        Container(
          width: 26.w,
          height: 8.h,
          decoration: BoxDecoration(
            color: ColorManager.primaryBlue,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        horizontalSpace(width: 4),
        Container(
          width: 8.w,
          height: 8.h,
          decoration: const BoxDecoration(
            color: ColorManager.morelightergray,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}

class thirdtogglebutton extends StatelessWidget {
  const thirdtogglebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 8.w,
          height: 8.h,
          decoration: const BoxDecoration(
            color: ColorManager.morelightergray,
            shape: BoxShape.circle,
          ),
        ),
        horizontalSpace(width: 4),
        Container(
          width: 8.w,
          height: 8.h,
          decoration: const BoxDecoration(
            color: ColorManager.morelightergray,
            shape: BoxShape.circle,
          ),
        ),
        horizontalSpace(width: 4),
        Container(
          width: 26.w,
          height: 8.h,
          decoration: BoxDecoration(
            color: ColorManager.primaryBlue,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ],
    );
  }
}
