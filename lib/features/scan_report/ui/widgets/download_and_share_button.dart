import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';

class DownloadAndShareButton extends StatelessWidget {
  const DownloadAndShareButton({super.key});

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
            ),
            const Spacer(),
            CustomTextButton(
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
