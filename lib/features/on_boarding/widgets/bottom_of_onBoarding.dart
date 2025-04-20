import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';

class BottomOfOnboarding extends StatelessWidget {
  const BottomOfOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              context.pushNamed(Routes.getStartedView);
            },
            child: Text(
              "Skip",
              style: TextStyle(color: ColorManager.black, fontSize: 16.sp),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ColorManager.primaryBlue, // Background color
            ),
            child: IconButton(
              onPressed: () {
                context.pushNamed(Routes.secondOnBoardingView);
              },
              icon: Icon(
                Icons.navigate_next_sharp,
                size: 24.sp,
                color: Colors.white,
                weight: 2.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class secondbottomscreen extends StatelessWidget {
  const secondbottomscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              context.pushNamed(Routes.getStartedView);
            },
            child: Text(
              "Skip",
              style: TextStyle(color: ColorManager.black, fontSize: 16.sp),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ColorManager.primaryBlue, // Background color
            ),
            child: IconButton(
              onPressed: () {
                context.pushNamed(Routes.thirdOnBoardingView);
              },
              icon: Icon(
                Icons.navigate_next_sharp,
                size: 24.sp,
                color: Colors.white,
                weight: 2.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
