import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/home/data/models/top_doctors_model.dart';

class ReviewerDetails extends StatelessWidget {
  const ReviewerDetails({super.key, required this.doctorReview});
  final Review doctorReview;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 50.w,
          height: 50.h,
          child: const CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/default_profile_photo.jpg',
            ),
          ),
        ),
        horizontalSpace(width: 11),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${doctorReview.user!.name}',
              style: Styles.font14Black500Weight,
            ),
            verticalSpace(height: 2),
            Text(
              '02 Mars',
              style: Styles.font14Black400Weight.copyWith(
                color: ColorManager.gray2,
                fontSize: 13.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
