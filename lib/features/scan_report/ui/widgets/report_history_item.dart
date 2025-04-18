import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';

import 'package:skin_care_app/features/scan_report/ui/widgets/report_history_image_container.dart';

class ReportHistoryItem extends StatelessWidget {
  const ReportHistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ReportHistoryImageContainer(),
          Text('06:30 PM', style: Styles.font14Black400Weight),
          Text('Tue, 04-Mar-2025', style: Styles.font14Black400Weight),
          CustomTextButton(
            textName: 'View',
            backgroundColor: ColorManager.primaryBlue,
            textStyle: Styles.font14White500Weight,
            width: 64.w,
            height: 22.h,
            borderRadius: BorderRadius.circular(5.r),
          ),
        ],
      ),
    );
  }
}
