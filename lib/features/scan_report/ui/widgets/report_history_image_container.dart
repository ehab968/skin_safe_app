import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReportHistoryImageContainer extends StatelessWidget {
  const ReportHistoryImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      height: 30.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        image: DecorationImage(
          image: Image.asset('assets/images/skin image.png').image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
