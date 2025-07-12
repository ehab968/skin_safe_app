import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/reports/report_history/ui/widgets/history_listview_bloc_builder.dart';

class HistoryViewBody extends StatelessWidget {
  const HistoryViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(height: 55),
            Text(
              'Previous reports history',
              style: Styles.font16Black500Weight,
            ),
            verticalSpace(height: 16),
            const HistoryListviewBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
