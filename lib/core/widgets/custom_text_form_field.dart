import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class CustomTextFormField extends StatefulWidget {
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
    this.keyboardType,
    this.inputFormatters,
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
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  FocusNode focusNode = FocusNode();
  bool isFocused = false;
  @override
  void initState() {
    focusNode.addListener(() {
      setState(() {
        isFocused = focusNode.hasFocus;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: widget.focusNode ?? focusNode,
      controller: widget.controller,
      inputFormatters: const [],
      autofocus: widget.autoFocus ?? false,
      onChanged: widget.onChanged,
      onSaved: widget.onSaved,
      autovalidateMode: widget.autovalidateMode,
      validator: (value) {
        return widget.validator(value);
      },
      style: widget.textStyle ?? Styles.font14PrimaryBlue300Weight,
      keyboardType: widget.keyboardType,
      obscureText: widget.isObscure ?? false,
      cursorColor: widget.cursorColor ?? ColorManager.primaryBlue,
      maxLines: widget.maxline,
      decoration: InputDecoration(
        isDense: true,
        suffixIcon: widget.suffixIcon,
        contentPadding:
            widget.padding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        hintText: widget.hint,
        hintStyle:
            widget.hintStyle ??
            (isFocused
                ? Styles.font14PrimaryBlue300Weight
                : Styles.font14LightGray300Weight),
        fillColor:
            widget.backgroundColor ??
            (isFocused ? Colors.white : ColorManager.lighterGray),
        filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(
          widget.enabledBordrColor ?? ColorManager.lighterGray,
        ),
        focusedBorder: buildBorder(
          widget.focusedBorderColor ?? ColorManager.primaryBlue,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(width: 1.4, color: color ?? Colors.white),
      borderRadius: BorderRadius.circular(widget.borderRadius),
    );
  }
}
