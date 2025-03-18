import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Services for\nyour skin health",
                  style: Styles.font16Black500Weight,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none_rounded,
                    size: 24.sp,
                    weight: 20.sp,
                  ),
                ),
              ],
            ),
            verticalSpace(height: 16.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 4.w),
              decoration: BoxDecoration(
                color: ColorManager.lighterGray,
                borderRadius: BorderRadius.circular(16),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for doctor, articles...",
                  hintStyle: Styles.font14LightGray300Weight,
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search_sharp,
                    size: 24.sp,
                    weight: 1.sp,
                    color: ColorManager.lightGray,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
