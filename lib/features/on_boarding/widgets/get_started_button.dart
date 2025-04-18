import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CustomTextButton(
        textName: 'Get Started',
        backgroundColor: ColorManager.primaryBlue,
        textStyle: Styles.font16White500Weight,
        width: double.infinity,
        height: 44.h,
        onPressed: () {
          context.pushNamedAndRemoveUntil(
            Routes.loginView,
            predicate: (route) => false,
          );
        },
      ),
    );
  }
}
