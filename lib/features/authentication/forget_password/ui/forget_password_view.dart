import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/authentication/forget_password/ui/widgets/forget_password_text_field.dart';
import 'package:skin_care_app/features/authentication/forget_password/ui/widgets/forget_your_password_section.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ForgetYourPasswordSection(),
            verticalSpace(height: 24),
            const ForgetPasswordTextField(),
          ],
        ),
      ),
    );
  }
}
