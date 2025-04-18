import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';

class InfoNote extends StatelessWidget {
  const InfoNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        Image.asset('assets/images/info_attention.png', width: 24,height: 24,),
        horizontalSpace(width: 10.w),
        Expanded(
          child: Text(
            'Please make sure to arrive a bit earlier your consultation time, if you have any questions or need to reschedule, feel free to contact us',
            style: TextStyle(fontSize: 14.sp, height: 1.4, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
