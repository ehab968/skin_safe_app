import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:skin_care_app/core/helper/app_validator.dart';
import 'package:skin_care_app/core/theme/colors.dart';

class CustomPinTextField extends StatelessWidget {
  final TextEditingController? controller;
  const CustomPinTextField({super.key, this.controller});
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      validator: AppValidators.validatePin,
      controller: controller,
      appContext: context,
      length: 6,
      enableActiveFill: true,
      keyboardType: TextInputType.number,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      autoFocus: true,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(10),
        fieldHeight: 50.h,
        fieldWidth: 50.w,
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
