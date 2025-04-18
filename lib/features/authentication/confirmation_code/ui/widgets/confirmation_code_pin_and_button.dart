import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:skin_care_app/core/helper/app_validator.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';

class ConfirmationCodePinAndButton extends StatelessWidget {
  ConfirmationCodePinAndButton({super.key});
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          PinCodeTextField(
            validator: AppValidators.validatePin,
            appContext: context,
            length: 4,
            enableActiveFill: true,
            keyboardType: TextInputType.number,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            autoFocus: true,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(10),
              fieldHeight: 74.h,
              fieldWidth: 74.w,
              inactiveBorderWidth: 1,
              activeBorderWidth: 1,
              selectedBorderWidth: 1,
              errorBorderWidth: 1,
              inactiveColor: ColorManager.black,
              inactiveFillColor: ColorManager.lighterGray,
              activeColor: ColorManager.primaryBlue,
              activeFillColor: Colors.white,
              selectedColor: ColorManager.primaryBlue,
              selectedFillColor: Colors.white,
              errorBorderColor: ColorManager.red,
            ),
          ),
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
