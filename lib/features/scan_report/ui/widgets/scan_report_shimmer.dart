import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/history_shimmer.dart';

class ScanReportShimmer extends StatelessWidget {
  const ScanReportShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(height: 55),
          // scan image
          Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Container(
              height: 200.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: Colors.white,
              ),
            ),
          ),
          verticalSpace(height: 16),

          // current report bar
          Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Container(width: 150.w, height: 20.h, color: Colors.white),
          ),
          verticalSpace(height: 16),

          // user details
          Row(
            children: [
              shimmerBox(width: 100.w, height: 16.h),
              horizontalSpace(width: 16.w),
              shimmerBox(width: 100.w, height: 16.h),
            ],
          ),
          verticalSpace(height: 8),
          shimmerBox(width: 200.w, height: 16.h),
          verticalSpace(height: 8),
          Row(
            children: [
              shimmerBox(width: 120.w, height: 16.h),
              horizontalSpace(width: 16.w),
              shimmerBox(width: 120.w, height: 16.h),
            ],
          ),
          verticalSpace(height: 8),
          shimmerBox(width: 150.w, height: 16.h),
          verticalSpace(height: 16),

          // Comments
          shimmerBox(width: double.infinity, height: 14.h),
          verticalSpace(height: 6),
          shimmerBox(width: double.infinity, height: 14.h),
          verticalSpace(height: 6),
          shimmerBox(width: double.infinity, height: 14.h),
          verticalSpace(height: 6),
          shimmerBox(width: double.infinity, height: 14.h),
          verticalSpace(height: 20),
          // history
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) => const HistoryItemShimmer(),
          ),
          verticalSpace(height: 32),
          // two buttons
          Row(
            children: [
              shimmerBox(width: 164.w, height: 40.h),
              const Spacer(),
              shimmerBox(width: 164.w, height: 40.h),
            ],
          ),
        ],
      ),
    );
  }

  Widget shimmerBox({required double width, required double height}) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(width: width, height: height, color: Colors.white),
    );
  }
}
