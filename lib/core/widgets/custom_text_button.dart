import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/theme/colors.dart';

class CustomTextButton extends StatefulWidget {
  const CustomTextButton({
    super.key,
    this.backgroundColor,
    this.borderRadius,
    this.textName,
    this.onPressed,
    this.height,
    this.width,
    required this.textStyle,
    this.child,
    this.borderSide ,
  });

  final String? textName;
  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onPressed;
  final double? height, width;
  final TextStyle textStyle;
  final Widget? child;
  final BorderSide? borderSide;

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  bool isPressed = false;

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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 48.h,
      width: widget.width ?? double.infinity,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          color: isPressed
              ? Colors.white
              : (widget.backgroundColor ?? ColorManager.primaryBlue),
          borderRadius: widget.borderRadius ?? BorderRadius.circular(10),
        ),
        child: TextButton(
          onPressed: handlePress,
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: widget.borderRadius ?? BorderRadius.circular(10),
            ),
            side: widget.borderSide != null ? widget.borderSide : null,

          ),
          child: widget.child ??
              Text(
                widget.textName!,
                style: widget.textStyle.copyWith(
                  color: isPressed
                      ? ColorManager.primaryBlue
                      : widget.textStyle.color,
                ),
              ),
        ),
      ),
    );
  }
}
