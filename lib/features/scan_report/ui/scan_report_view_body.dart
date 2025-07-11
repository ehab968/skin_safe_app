import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/Profile/data/models/user_profile_model.dart';
import 'package:skin_care_app/features/scan_report/data/models/scan_report_response.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/comment_section.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/custom_head_container.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/download_and_share_button.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/report_details.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/report_image_container.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/user_report_bloc_builder.dart';

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
                      UserReportBlocBuilder(report: report, userData: userData),
                    ],
                  ),
                ),
              ),
            ],
          ),
          DownloadAndShareButton(
            imagePath: imagePath,
            feedback:
                'You should visit a dermatologist specialized in skin cancer.',
            name: 'Muhammed Ali',
            date: '14-Mar-2025',
            phone: '(20) 10 222 333 44',
            skinTone: 'Light to medium',
            gender: 'male',
            typeDetected: 'Melanoma',
          ),
        ],
      ),
    );
  }
}
