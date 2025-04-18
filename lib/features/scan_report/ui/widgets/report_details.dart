import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/custom_head_container.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/custom_rich_text.dart';

class ReportDetails extends StatelessWidget {
  const ReportDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomHeadContainer(title: 'Current report'),
        verticalSpace(height: 16),
        Padding(
          padding: EdgeInsets.only(left: 4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CustomRichText(
                    textName1: 'Name: ',
                    textName2: 'Muhammed Ali',
                  ),
                  horizontalSpace(width: 37),
                  const CustomRichText(
                    textName1: 'Date: ',
                    textName2: '14-Mar-2025',
                  ),
                ],
              ),
              verticalSpace(height: 8),
              const CustomRichText(
                textName1: 'Phone: ',
                textName2: '(20) 10 222 333 44',
              ),
              verticalSpace(height: 8),
              Row(
                children: [
                  const CustomRichText(
                    textName1: 'Skin tone: ',
                    textName2: 'Light to medium',
                  ),
                  horizontalSpace(width: 45),
                  const CustomRichText(
                    textName1: 'Gender: ',
                    textName2: 'male',
                  ),
                ],
              ),
              verticalSpace(height: 8),
              const CustomRichText(
                textName1: 'Type detected: ',
                textName2: 'Melanoma',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
