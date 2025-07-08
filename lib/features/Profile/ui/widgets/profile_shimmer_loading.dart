import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class ProfileShimmerLoading extends StatelessWidget {
  const ProfileShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(height: 22.h),
        // Profile Info Shimmer
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Row(
            children: [
              CircleAvatar(radius: 45.sp, backgroundColor: Colors.white),
              horizontalSpace(width: 32.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: 120.w, height: 20.h, color: Colors.white),
                  verticalSpace(height: 8.h),
                  Container(width: 180.w, height: 16.h, color: Colors.white),
                ],
              ),
            ],
          ),
        ),
        verticalSpace(height: 18.h),

        // Personal info section title
        Text('Personal info', style: Styles.font16Black700Weight),
        verticalSpace(height: 8.h),

        // Personal info items shimmer
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Column(
            children: [
              _buildShimmerInfoRow(),
              _buildShimmerInfoRow(),
              _buildShimmerInfoRow(),
              _buildShimmerInfoRow(),
              _buildShimmerInfoRow(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildShimmerInfoRow() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 125.w,
            child: Container(
              width: double.infinity,
              height: 16.h,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 16.h,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
