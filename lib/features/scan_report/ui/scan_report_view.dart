import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/scan_report_bloc_builder.dart';

class ScanReportView extends StatelessWidget {
  const ScanReportView({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScanReportBlocBuilder(imagePath: imagePath),
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: null,
        onTap: (index) => navigateToTab(context, index),
      ),
    );
  }
}
