import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/snackbar.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';
import 'package:skin_care_app/features/reports/logic/download_pdf.dart';

class DownloadAndShareButton extends StatelessWidget {
  const DownloadAndShareButton({
    super.key,
    required this.imagePath,
    required this.feedback,
    required this.name,
    required this.date,
    required this.phone,
    required this.skinTone,
    required this.gender,
    required this.typeDetected,
  });
  final String imagePath;
  final String feedback;
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
        const Spacer(),
        Row(
          children: [
            CustomTextButton(
              width: 164.w,
              backgroundColor: ColorManager.white,
              textName: 'Download PDF',
              textStyle: Styles.font16White500Weight.copyWith(
                color: ColorManager.primaryBlue,
              ),
              onPressed: () async {
                await PdfHelper.generatePdfReport(
                  imagePath: imagePath,
                  feedback: feedback,
                  name: name,
                  date: date,
                  phone: phone,
                  skinTone: skinTone,
                  gender: gender,
                  typeDetected: typeDetected,
                );
                snackBarShow(
                  context,
                  'PDF downloaded successfully you can share it now',
                  backgroundColor: Colors.green,
                );
              },
            ),
            const Spacer(),
            CustomTextButton(
              onPressed: () {
                PdfHelper.openPdf();
                if (PdfHelper.openPdf() == true) {
                  snackBarShow(
                    context,
                    'PDF opened successfully',
                    backgroundColor: Colors.green,
                  );
                }
              },
              width: 164.w,
              backgroundColor: ColorManager.primaryBlue,
              textName: 'Share Report',
              textStyle: Styles.font16White500Weight.copyWith(
                color: ColorManager.white,
              ),
            ),
          ],
        ),
        verticalSpace(height: 32),
      ],
    );
  }
}
