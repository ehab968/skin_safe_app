import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class AlreadyHaveAccountSection extends StatelessWidget {
  const AlreadyHaveAccountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          text: 'Already have an account? ',
          style: Styles.font14Black400Weight,
          children: [
            TextSpan(
              text: 'Login',
              style: Styles.font14PrimaryBlue500Weight,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushNamedAndRemoveUntil(Routes.loginView,
                      predicate: (route) => false);
                },
            ),
          ],
        ),
      ),
    );
  }
}
