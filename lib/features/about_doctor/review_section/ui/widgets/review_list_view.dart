import 'package:flutter/material.dart';
import 'package:skin_care_app/features/about_doctor/review_section/ui/widgets/review_list_view_item.dart';
import 'package:skin_care_app/features/home/data/models/top_doctors_model.dart';

class ReviewListView extends StatelessWidget {
  const ReviewListView({super.key, required this.doctorReviewList});
  final List<Review> doctorReviewList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 0),
      itemCount: doctorReviewList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: ReviewListViewItem(doctorReview: doctorReviewList[index]),
        );
      },
    );
  }
}
