import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/features/scan/ui/widgets/scan_view_body.dart';

class ScanView extends StatelessWidget {
  const ScanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ScanViewBody(),
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: 2,
        onTap: (index) {
          index == 2 ? null : navigateToTab(context, index);
        },
      ),
    );
  }
}
