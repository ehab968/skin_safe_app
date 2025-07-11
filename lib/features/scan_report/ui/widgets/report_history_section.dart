import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/Profile/data/models/user_profile_model.dart';
import 'package:skin_care_app/features/scan_report/data/models/user_report_response.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/custom_head_container.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/report_history_list_view.dart';

class ReportHistorySection extends StatelessWidget {
  const ReportHistorySection({
    super.key,
    required this.reports,
    required this.userData,
  });
  final List<UserReportResponse> reports;
  final UserProfileData userData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomHeadContainer(title: 'Previous reports history'),
        verticalSpace(height: 16),
        ReportHistoryListView(
          reports: reports,
          userData: userData,
        ),
        verticalSpace(height: 100),
      ],
    );
  }
}
