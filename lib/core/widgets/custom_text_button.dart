import 'package:flutter/material.dart';
import 'package:skin_care_app/core/theme/colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.backgroundColor,
    this.borderRadius,
    this.textName,
    this.onPressed,
    required this.height,
    required this.width,
    required this.textStyle,
    this.child,
  });
  final String? textName;
  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onPressed;
  final double height, width;
  final TextStyle textStyle;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor ?? ColorManager.primaryBlue,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(10),
          ),
        ),
        child: child ??
            Text(
              textName!,
              style: textStyle,
            ),
      ),
    );
  }
}
