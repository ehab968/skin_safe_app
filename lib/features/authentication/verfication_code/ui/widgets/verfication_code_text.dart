import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class VerficationCodeText extends StatelessWidget {
  const VerficationCodeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(height: 80),
        Text(
          'Enter the verfication \ncode',
          style: Styles.font24Black600Weight,
        ),
        verticalSpace(height: 8),
        Text(
          'Enter the code we sent to you on your email',
          style: Styles.font16Gray300Weight,
        ),
      ],
    );
  }
}