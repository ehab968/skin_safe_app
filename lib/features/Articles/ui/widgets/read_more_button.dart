import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/theme/colors.dart';

class ReadMoreButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;

  const ReadMoreButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 106.w,
      height: height ?? 40.h,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: ColorManager.primaryBlue),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.r),
          ),
          padding: const EdgeInsets.only(top: 6, bottom: 7, left: 6, right: 6),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: ColorManager.primaryBlue,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
