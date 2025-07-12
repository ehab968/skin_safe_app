import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/theme/colors.dart';

class ViewDetailsButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ViewDetailsButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: ColorManager.primaryBlue, width: 1.5),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: ColorManager.primaryBlue,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
