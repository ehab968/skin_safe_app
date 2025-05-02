import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/custom_rich_text.dart';

class ReportDetails extends StatelessWidget {
  const ReportDetails({
    super.key,
    required this.name,
    required this.date,
    required this.phone,
    required this.skinTone,
    required this.gender,
    required this.typeDetected,
  });
  final String name;
  final String date;
  final String phone;
  final String skinTone;
  final String gender;
  final String typeDetected;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomRichText(textName1: 'Name: ', textName2: name),
                  horizontalSpace(width: 37),
                  CustomRichText(textName1: 'Date: ', textName2: date),
                ],
              ),
              verticalSpace(height: 8),
              CustomRichText(textName1: 'Phone: ', textName2: phone),
              verticalSpace(height: 8),
              Row(
                children: [
                  CustomRichText(textName1: 'Skin tone: ', textName2: skinTone),
                  horizontalSpace(width: 45),
                  CustomRichText(textName1: 'Gender: ', textName2: gender),
                ],
              ),
              verticalSpace(height: 8),
              CustomRichText(
                textName1: 'Type detected: ',
                textName2: typeDetected,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
