import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/about_doctor/review_section/ui/widgets/rating_bar_review.dart';
import 'package:skin_care_app/features/about_doctor/review_section/ui/widgets/reviewers_details.dart';

class ReviewListViewItem extends StatelessWidget {
  const ReviewListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ReviewerDetails(), Spacer(), RatingBarReview()],
          ),
          verticalSpace(height: 8),
          Text(
            'I had an amazing experience with Dr.Hady! He took the time to listen to my concerns and provided a clear, effective treatment plan.',
            style: Styles.font14Black400Weight.copyWith(fontSize: 13.sp),
          ),
        ],
      ),
    );
  }
}
