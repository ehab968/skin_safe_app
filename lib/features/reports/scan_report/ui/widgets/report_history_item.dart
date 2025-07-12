import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';
import 'package:skin_care_app/features/Profile/data/models/user_profile_model.dart';
import 'package:skin_care_app/features/reports/data/models/user_report_response.dart';
import 'package:skin_care_app/features/reports/scan_report/ui/view_report.dart';

import 'package:skin_care_app/features/reports/scan_report/ui/widgets/report_history_image_container.dart';

class ReportHistoryItem extends StatelessWidget {
  const ReportHistoryItem({
    super.key,
    required this.report,
    required this.userData,
  });
  final UserReportResponse report;
  final UserProfileData userData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ReportHistoryImageContainer(image: report.scannedImage!),
          // horizontalSpace(width: 21),
          Text(setupTime(), style: Styles.font14Black400Weight),
          // horizontalSpace(width: 19),
          Text(setupDate(), style: Styles.font14Black400Weight),
          // const Spacer(),
          CustomTextButton(
            textName: 'View',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ViewReport(reportData: report, userData: userData);
                  },
                ),
              );
            },
            backgroundColor: ColorManager.primaryBlue,
            textStyle: Styles.font14White500Weight,
            width: 64.w,
            height: 22.h,
            borderRadius: BorderRadius.circular(5.r),
          ),
          // horizontalSpace(width: 26),
        ],
      ),
    );
  }

  String setupDate() {
    String stringDate = report.createdAt!;
    DateTime dateTime = DateTime.parse(stringDate);
    String onlyDate = DateFormat('dd-MMM-yyyy').format(dateTime);
    return onlyDate;
  }

  String setupTime() {
    String stringDate = report.createdAt!;
    DateTime dateTime = DateTime.parse(stringDate);
    String onlyTime = DateFormat('hh:mm a').format(dateTime);
    return onlyTime;
  }
}
