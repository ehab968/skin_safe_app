import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/features/scan_report/ui/view_report_body.dart';

class ViewReport extends StatelessWidget {
  const ViewReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: null,
        onTap: (index) => navigateToTab(context, index),
      ),
      body: const ViewReportBody(),
    );
  }
}
