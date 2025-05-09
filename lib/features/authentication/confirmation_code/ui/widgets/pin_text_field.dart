import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:skin_care_app/core/helper/app_validator.dart';
import 'package:skin_care_app/core/theme/colors.dart';

class PinTextField extends StatelessWidget {
  const PinTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
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
    );
  }
}
