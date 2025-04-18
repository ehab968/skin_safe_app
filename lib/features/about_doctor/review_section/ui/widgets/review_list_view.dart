import 'package:flutter/material.dart';
import 'package:skin_care_app/features/about_doctor/review_section/ui/widgets/review_list_view_item.dart';

class ReviewListView extends StatelessWidget {
  const ReviewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 0),
      itemCount: 5,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 24),
          child: ReviewListViewItem(),
        );
      },
    );
  }
}
