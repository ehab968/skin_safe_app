import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/authentication/verfication_code/ui/widgets/verfication_code_pin_and_button.dart';
import 'package:skin_care_app/features/authentication/verfication_code/ui/widgets/verfication_code_text.dart';

class VerficationCodeView extends StatelessWidget {
  const VerficationCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VerficationCodeText(),
            verticalSpace(height: 32),
            const VerficationCodePinAndButton(),
          ],
        ),
      ),
    );
  }
}
