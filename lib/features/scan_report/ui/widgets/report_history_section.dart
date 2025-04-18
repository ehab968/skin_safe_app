import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/custom_head_container.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/report_history_list_view.dart';

class ReportHistorySection extends StatelessWidget {
  const ReportHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomHeadContainer(title: 'Previous reports history'),
        verticalSpace(height: 16),
        const ReportHistoryListView(),
        verticalSpace(height: 100),
      ],
    );
  }
}
