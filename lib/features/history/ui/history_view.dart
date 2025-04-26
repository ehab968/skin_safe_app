import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/features/history/ui/history_view_body.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: 1,
        onTap: (index) => navigateToTab(context, index),
      ),
      body: const HistoryViewBody(),
    );
  }
}
