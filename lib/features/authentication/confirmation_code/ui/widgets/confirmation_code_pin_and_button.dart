import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';
import 'package:skin_care_app/features/authentication/widgets/custom_pin_text_field.dart';

class ConfirmationCodePinAndButton extends StatelessWidget {
  ConfirmationCodePinAndButton({super.key});
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const CustomPinTextField(),
          verticalSpace(height: 32),
          CustomTextButton(
            textName: 'Verify Code',
            backgroundColor: ColorManager.primaryBlue,
            height: 48.h,
            width: double.infinity,
            textStyle: Styles.font16White500Weight,
            onPressed: () {
              if (formKey.currentState!.validate()) {
                context.pushReplacementNamed(Routes.resetPasswordView);
              }
            },
          ),
        ],
      ),
    );
  }
}
