import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';

class LoginWithGoogle extends StatelessWidget {
  const LoginWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          CustomTextButton(
            backgroundColor: ColorManager.black,
            height: 48.h,
            width: double.infinity,
            textStyle: Styles.font16White500Weight,
            borderRadius: BorderRadius.circular(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/svgs/Google.svg'),
                horizontalSpace(width: 10),
                Text(
                  'Login with Google',
                  style: Styles.font16White500Weight,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
