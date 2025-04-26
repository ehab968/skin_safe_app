import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReportImageContainer extends StatelessWidget {
  const ReportImageContainer({super.key, required this.image});

  final ImageProvider<Object> image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
        image: DecorationImage(
          image: image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
