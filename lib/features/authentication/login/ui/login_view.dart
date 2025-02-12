import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/widgets/email_and_password.dart';
import 'package:skin_care_app/features/authentication/login/ui/widgets/login_and_welcome_text.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LoginAndWelcomeText(),
                verticalSpace(height: 32),
                const EmailAndPassword(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
