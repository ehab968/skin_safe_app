import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/theme/colors.dart';

class RatingBarReview extends StatelessWidget {
  const RatingBarReview({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: 3.5,
      itemSize: 20.r,
      itemCount: 5,
      unratedColor: ColorManager.morelightergray,
      itemBuilder:
          (context, index) =>
              const Icon(Icons.star_outlined, color: ColorManager.yellow),
    );
  }
}
