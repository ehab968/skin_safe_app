import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/comment_section.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/download_and_share_button.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/report_history_section.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/report_details.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/report_image_container.dart';

class ScanReportViewBody extends StatelessWidget {
  const ScanReportViewBody({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Stack(
        children: [
          Column(
            children: [
              verticalSpace(height: 55),
              ReportImageContainer(imagePath: imagePath),
              verticalSpace(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const ReportDetails(),
                      verticalSpace(height: 16),
                      const CommentSection(),
                      verticalSpace(height: 16),
                      const ReportHistorySection(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const DownloadAndShareButton(),
        ],
      ),
    );
  }
}
