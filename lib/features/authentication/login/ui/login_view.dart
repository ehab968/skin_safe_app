import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/authentication/login/ui/widgets/dont_have_account_section.dart';
import 'package:skin_care_app/features/authentication/login/ui/widgets/email_and_password.dart';
import 'package:skin_care_app/features/authentication/login/ui/widgets/login_and_welcome_text.dart';
import 'package:skin_care_app/features/authentication/login/ui/widgets/login_button_and_or.dart';
import 'package:skin_care_app/features/authentication/login/ui/widgets/login_with_google.dart';
import 'package:skin_care_app/features/authentication/login/ui/widgets/remember_and_forget_password.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LoginAndWelcomeText(),
              verticalSpace(height: 32),
              const EmailAndPassword(),
              verticalSpace(height: 16),
              const RememberAndForgetPassword(),
              verticalSpace(height: 42),
              const LoginButtonAndOr(),
              verticalSpace(height: 42),
              const LoginWithGoogle(),
              verticalSpace(height: 42),
              const DontHaveAccountSection(),
            ],
          ),
        ),
      ),
    );
  }
}
