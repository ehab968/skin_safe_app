import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class ConfirmationCodeText extends StatelessWidget {
  const ConfirmationCodeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(height: 80),
        Text(
          'Enter the confirmation \ncode',
          style: Styles.font24Black600Weight,
        ),
        verticalSpace(height: 8),
        Text(
          'Enter the code we sent to you',
          style: Styles.font16Gray300Weight,
        ),
      ],
    );
  }
}
