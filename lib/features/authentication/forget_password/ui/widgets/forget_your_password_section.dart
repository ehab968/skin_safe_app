import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class ForgetYourPasswordSection extends StatelessWidget {
  const ForgetYourPasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(height: 80),
        Text('Forgot your password?', style: Styles.font24Black600Weight),
        verticalSpace(height: 8),
        Text(
          'Enter your email address or phone number, we will send you a confirmation code',
          style: Styles.font16Gray300Weight,
        ),
      ],
    );
  }
}
