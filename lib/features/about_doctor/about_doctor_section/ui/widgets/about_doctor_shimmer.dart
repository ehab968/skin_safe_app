import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';

Widget buildShimmer() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      verticalSpace(height: 55),
      Container(
        height: 120.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      verticalSpace(height: 24),
      Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      verticalSpace(height: 24),
      Expanded(
        child: ListView.builder(
          itemCount: 3,
          itemBuilder:
              (_, __) => Container(
                margin: EdgeInsets.only(bottom: 12.h),
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
        ),
      ),
    ],
  );
}
