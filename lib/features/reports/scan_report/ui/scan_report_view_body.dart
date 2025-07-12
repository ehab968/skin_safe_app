import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/Profile/data/models/user_profile_model.dart';
import 'package:skin_care_app/features/reports/data/models/scan_report_response.dart';
import 'package:skin_care_app/features/reports/scan_report/ui/widgets/comment_section.dart';
import 'package:skin_care_app/features/reports/scan_report/ui/widgets/custom_head_container.dart';
import 'package:skin_care_app/features/reports/scan_report/ui/widgets/download_and_share_button.dart';
import 'package:skin_care_app/features/reports/scan_report/ui/widgets/report_details.dart';
import 'package:skin_care_app/features/reports/scan_report/ui/widgets/report_image_container.dart';
import 'package:skin_care_app/features/reports/scan_report/ui/widgets/history_report_section_bloc_builder.dart';

class ScanReportViewBody extends StatelessWidget {
  const ScanReportViewBody({
    super.key,
    required this.imagePath,
    required this.report,
    required this.userData,
  });

  final String imagePath;
  final ScanReportResponse report;
  final UserProfileData userData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Stack(
        children: [
          Column(
            children: [
              verticalSpace(height: 55),
              ReportImageContainer(image: report.data!.scannedImage ?? ''),
              verticalSpace(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const CustomHeadContainer(title: 'Current report'),
                      verticalSpace(height: 16),
                      ReportDetails(
                        name: userData.name ?? 'Muhammed Ali',
                        date: userData.dateOfBirth ?? '14-Mar-2025',
                        phone: userData.phoneNumber ?? '(20) 10 222 333 44',
                        skinTone: userData.skinTone ?? 'Light to medium',
                        gender: userData.gender ?? 'gender',
                        typeDetected: report.aiResult!.label ?? 'Melanoma',
                      ),
                      verticalSpace(height: 16),
                      CommentSection(comment: report.aiResult!.comment ?? ''),
                      verticalSpace(height: 16),
                      HistoryReportSectionBlocBuilder(userData: userData),
                    ],
                  ),
                ),
              ),
            ],
          ),
          DownloadAndShareButton(
            imagePath: imagePath,
            feedback:
                report.aiResult?.comment ?? 'No feedback available',
            name: userData.name ?? 'Muhammed Ali',
            date: userData.dateOfBirth ?? '14-Mar-2025',
            phone: userData.phoneNumber ?? '(20) 10 222 333 44',
            skinTone: userData.skinTone ?? 'Light to medium',
            gender: userData.gender!,
            typeDetected: report.aiResult?.label ?? 'Melanoma',
          ),
        ],
      ),
    );
  }
}
