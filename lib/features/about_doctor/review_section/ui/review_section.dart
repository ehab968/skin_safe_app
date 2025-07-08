import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/about_doctor/review_section/ui/widgets/review_list_view.dart';
import 'package:skin_care_app/features/home/data/models/top_doctors_model.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key, required this.doctorReview});
  final List<Review> doctorReview;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ReviewListView(doctorReviewList: doctorReview),
            verticalSpace(height: 100),
          ],
        ),
      ),
    );
  }
}
