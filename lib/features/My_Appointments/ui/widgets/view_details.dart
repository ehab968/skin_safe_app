import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/theme/colors.dart';

class ViewDetailsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 115.w,
      height: 28.h,
      child: OutlinedButton(
        onPressed: () {
         
        },
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: ColorManager.primaryBlue), 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), 
          ),
          padding: EdgeInsets.only(left: 12, right: 12),
        ),
        child: Text(
          'View Details',
          style: TextStyle(
            color: ColorManager.primaryBlue, 
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
