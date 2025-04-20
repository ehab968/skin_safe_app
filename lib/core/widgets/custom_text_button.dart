import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/theme/colors.dart';

class CustomTextButton extends StatefulWidget {
  const CustomTextButton({
    super.key,
    required this.backgroundColor,
    this.borderRadius,
    required this.textName,
    this.onPressed,
    this.height,
    this.width,
    required this.textStyle,
    this.borderSideColor,
  });
  final String textName;
  final Color backgroundColor;
  final Color? borderSideColor;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onPressed;
  final double? height, width;
  final TextStyle textStyle;
  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handlePress,
      child: AnimatedContainer(
        height: widget.height ?? 48.h,
        width: widget.width ?? double.infinity,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          color: getBackgroundColor(),
          // isPressed && widget.backgroundColor == ColorManager.primaryBlue
          //     ? Colors.white
          //     : (widget.backgroundColor ?? ColorManager.primaryBlue),
          borderRadius: widget.borderRadius ?? BorderRadius.circular(10),
          border: Border.all(
            color: widget.borderSideColor ?? Colors.transparent,
          ),
        ),
        child: Center(
          child: Text(
            widget.textName,
            style: widget.textStyle.copyWith(
              color:
                  isPressed ? ColorManager.primaryBlue : widget.textStyle.color,
            ),
          ),
        ),
      ),
    );
  }

  void handlePress() {
    setState(() {
      isPressed = true;
    });
    Future.delayed(const Duration(milliseconds: 250), () {
      setState(() {
        isPressed = false;
      });
    });
    widget.onPressed?.call();
  }

  Color getBackgroundColor() {
    if (isPressed && widget.backgroundColor == ColorManager.primaryBlue) {
      return ColorManager.white;
    } else if (isPressed && widget.backgroundColor == ColorManager.white) {
      return ColorManager.offWhite;
    } else if (isPressed &&
        widget.backgroundColor == ColorManager.primaryBlue &&
        widget.textName == 'Login') {
      return ColorManager.primaryBlueLight;
    } else if (isPressed &&
        widget.backgroundColor == ColorManager.white &&
        widget.textName == 'Sign up') {
      return ColorManager.offWhite;
    } else {
      return widget.backgroundColor;
    }
  }
}
