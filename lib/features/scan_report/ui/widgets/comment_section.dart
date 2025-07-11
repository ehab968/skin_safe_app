import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class CommentSection extends StatelessWidget {
  const CommentSection({super.key, required this.comment});
  final String comment;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Comments', style: Styles.font16Black500Weight),
        verticalSpace(height: 8),
        Padding(
          padding: EdgeInsets.only(left: 4.w),
          child: Text(comment, style: Styles.font15Black400Weight),
        ),
      ],
    );
  }
}
