import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/report_history_item.dart';

class ReportHistoryListView extends StatelessWidget {
  const ReportHistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 0),
      itemCount: 5,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,

      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 16.h),
          child: const ReportHistoryItem(),
        );
      },
    );
  }
}
