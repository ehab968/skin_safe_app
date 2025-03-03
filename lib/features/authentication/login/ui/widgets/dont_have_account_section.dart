import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class DontHaveAccountSection extends StatelessWidget {
  const DontHaveAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          text: 'Don\'t have an account? ',
          style: Styles.font14Black400Weight,
          children: [
            TextSpan(
              text: 'Sign Up',
              style: Styles.font14PrimaryBlue500Weight,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushNamed(Routes.signUpView);
                },
            ),
          ],
        ),
      ),
    );
  }
}
