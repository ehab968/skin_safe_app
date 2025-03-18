import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class CreateNewPasswordText extends StatelessWidget {
  const CreateNewPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(height: 80),
        Text('Create a new password', style: Styles.font24Black600Weight),
        verticalSpace(height: 8),
        Text('Create a new login password', style: Styles.font16Gray300Weight),
      ],
    );
  }
}
