import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/authentication/confirmation_code/ui/widgets/confirmation_code_pin_and_button.dart';
import 'package:skin_care_app/features/authentication/confirmation_code/ui/widgets/confirmation_code_text.dart';

class ConfirmationCodeView extends StatelessWidget {
  const ConfirmationCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ConfirmationCodeText(),
            verticalSpace(height: 32),
            ConfirmationCodePinAndButton(),
          ],
        ),
      ),
    );
  }
}
