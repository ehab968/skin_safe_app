import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryItemShimmer extends StatelessWidget {
  const HistoryItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          shimmerBox(width: 60.w, height: 14.h),
          shimmerBox(width: 100.w, height: 14.h),
          shimmerBox(width: 50.w, height: 30.h, borderRadius: 8.r),
        ],
      ),
    );
  }

  Widget shimmerBox({
    required double width,
    required double height,
    double borderRadius = 4.0,
  }) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
