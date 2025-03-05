import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class LoginAndWelcomeText extends StatelessWidget {
  const LoginAndWelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(height: 80),
        Text(
          'Login',
          style: Styles.font24Black600Weight,     
        ),
        verticalSpace(height: 8),
        Text(
          'Welcome! enter your mail id and password to login',
          style: Styles.font16Gray300Weight,
        ),
      ],
    );
  }
}