import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/features/Profile/data/models/user_profile_model.dart';
import 'package:skin_care_app/features/reports/data/models/user_report_response.dart';
import 'package:skin_care_app/features/reports/scan_report/ui/widgets/report_history_item.dart';

class ReportHistoryListView extends StatelessWidget {
  const ReportHistoryListView({
    super.key,
    required this.reports,
    required this.userData,
  });
  final List<UserReportResponse> reports;
  final UserProfileData userData;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 0),
      itemCount: reports.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 16.h),
          child: ReportHistoryItem(report: reports[index], userData: userData),
        );
      },
    );
  }
}
