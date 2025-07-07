import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/comment_section.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/custom_head_container.dart';
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
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Stack(
        children: [
          Column(
            children: [
              verticalSpace(height: 55),
              ReportImageContainer(
                image: Image.file(File(imagePath), fit: BoxFit.cover).image,
              ),
              verticalSpace(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const CustomHeadContainer(title: 'Current report'),
                      verticalSpace(height: 16),
                      const ReportDetails(
                        name: 'Muhammed Ali',
                        date: '14-Mar-2025',
                        phone: '(20) 10 222 333 44 ',
                        skinTone: 'Light to medium',
                        gender: 'male',
                        typeDetected: 'Melanoma',
                      ),
                      verticalSpace(height: 16),
                      const CommentSection(
                        comment:
                            'You should visit a dermatologist specialized inskin cancer, you should do imaging (CT/MRI/PET) every 3-6 months based on disease stage ',
                      ),
                      verticalSpace(height: 16),
                      const ReportHistorySection(),
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
