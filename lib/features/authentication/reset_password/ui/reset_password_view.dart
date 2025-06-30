import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/authentication/reset_password/ui/widgets/create_new_password_form.dart';
import 'package:skin_care_app/features/authentication/reset_password/ui/widgets/create_new_password_text.dart';
import 'package:skin_care_app/features/authentication/reset_password/ui/widgets/reset_password_bloc_listner.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CreateNewPasswordText(),
            verticalSpace(height: 16),
            const CreateNewPasswordForm(),
            const ResetPasswordBlocListner(),
          ],
        ),
      ),
    );
  }
}
