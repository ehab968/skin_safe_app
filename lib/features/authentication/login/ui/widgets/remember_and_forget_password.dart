import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class RememberAndForgetPassword extends StatefulWidget {
  const RememberAndForgetPassword({super.key});

  @override
  State<RememberAndForgetPassword> createState() =>
      _RememberAndForgetPasswordState();
}

class _RememberAndForgetPasswordState extends State<RememberAndForgetPassword> {
  bool isRemembered = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          width: 35.w,
          child: IconButton(
            onPressed: () {
              setState(() {
                isRemembered = !isRemembered;
              });
            },
            icon: Icon(
              color: isRemembered ? ColorManager.primaryBlue : Colors.black,
              isRemembered
                  ? Icons.check_box_outlined
                  : Icons.check_box_outline_blank,
              size: 24.r,
            ),
          ),
        ),
        Text(
          'Remember me',
          style: Styles.font14Black400Weight,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => context.pushNamed(Routes.forgotPasswordView),
          child: Text(
            'Forget Password?',
            style: Styles.font14Red400Weight,
          ),
        ),
      ],
    );
  }
}
