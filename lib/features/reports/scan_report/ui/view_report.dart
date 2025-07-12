import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/Profile/data/models/user_profile_model.dart';
import 'package:skin_care_app/features/reports/data/models/user_report_response.dart';
import 'package:skin_care_app/features/reports/scan_report/ui/widgets/comment_section.dart';
import 'package:skin_care_app/features/reports/scan_report/ui/widgets/report_details.dart';
import 'package:skin_care_app/features/reports/scan_report/ui/widgets/report_image_container.dart';

class ViewReport extends StatelessWidget {
  const ViewReport({
    super.key,
    required this.reportData,
    required this.userData,
  });
  final UserReportResponse reportData;
  final UserProfileData userData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(height: 55),
            ReportImageContainer(image: reportData.scannedImage!),
            verticalSpace(height: 16),
            ReportDetails(
              name: userData.name!,
              date: userData.dateOfBirth!,
              phone: userData.phoneNumber!,
              skinTone: userData.skinTone!,
              gender: userData.gender!,
              typeDetected: reportData.typeDetected!,
            ),
            verticalSpace(height: 16),
            const CommentSection(
              comment:
                  'You should visit a dermatologist specialized in skin cancer, you should do imaging (CT/MRI/PET) every 3-6 months based on disease stage',
            ),
          ],
        ),
      ),
    );
  }
}
