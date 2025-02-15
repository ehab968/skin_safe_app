import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.maxline = 1,
    this.onSaved,
    this.padding,
    this.onChanged,
    this.autoFocus = false,
    this.controller,
    this.suffixIcon,
    this.iconOnPressed,
    this.enabledBordrColor,
    this.focusedBorderColor,
    this.borderRadius = 0,
    this.cursorColor,
    this.hintStyle,
    this.backgroundColor,
    this.textStyle,
    this.isObscure,
    this.focusNode,
    required this.validator,
    this.autovalidateMode,
  });
  final String hint;
  final int maxline;
  final FocusNode? focusNode;
  final Function(String?)? onSaved;
  final EdgeInsetsGeometry? padding;
  final void Function(String)? onChanged;
  final bool? autoFocus, isObscure;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final void Function()? iconOnPressed;
  final Color? enabledBordrColor,
      focusedBorderColor,
      cursorColor,
      backgroundColor;
  final double borderRadius;
  final TextStyle? hintStyle, textStyle;
  final Function(String?) validator;
  final AutovalidateMode? autovalidateMode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      autofocus: autoFocus ?? false,
      onChanged: onChanged,
      onSaved: onSaved,
      autovalidateMode: autovalidateMode,
      validator: (value) {
        return validator(value);
      },
      // (value) {
      //   if (value?.isEmpty ?? true) {
      //     return 'Field Is Required';
      //   } else {
      //     return null;
      //   }
      // },
      style: textStyle ?? Styles.font14PrimaryBlue300Weight,
      obscureText: isObscure ?? false,
      cursorColor: cursorColor ?? ColorManager.primaryBlue,
      maxLines: maxline,
      decoration: InputDecoration(
        isDense: true,
        suffixIcon: suffixIcon,
        contentPadding: padding ??
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 15.h,
            ),
        hintText: hint,
        hintStyle: hintStyle ?? Styles.font14LightGray300Weight,
        fillColor: backgroundColor ?? ColorManager.lighterGray,
        filled: true,
        border: buildBorder(),
        enabledBorder:
            buildBorder(enabledBordrColor ?? ColorManager.lighterGray),
        focusedBorder:
            buildBorder(focusedBorderColor ?? ColorManager.primaryBlue),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        width: 1.4,
        color: color ?? Colors.white,
      ),
      borderRadius: BorderRadius.circular(borderRadius),
    );
  }
}
