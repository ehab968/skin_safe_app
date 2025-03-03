import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';
import 'package:skin_care_app/features/authentication/login/logic/login_cubit/login_cubit.dart';

class LoginButtonAndOr extends StatelessWidget {
  const LoginButtonAndOr({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextButton(
          backgroundColor: ColorManager.primaryBlue,
          textName: 'Login',
          height: 48.h,
          width: double.infinity,
          textStyle: Styles.font16White500Weight,
          borderRadius: BorderRadius.circular(10),
          onPressed: () {
            if (context.read<LoginCubit>().formKey.currentState!.validate()) {
              context.pushReplacementNamed(Routes.homeView);
            }
          },
        ),
        verticalSpace(height: 16),
        Row(
          children: [
            Expanded(
              child: Divider(
                color: ColorManager.black,
                thickness: 1,
                indent: 38.w,
                endIndent: 10.w,
              ),
            ),
            Text(
              'OR',
              style: Styles.font16Gray300Weight.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            Expanded(
              child: Divider(
                color: ColorManager.black,
                thickness: 1,
                endIndent: 38.w,
                indent: 10.w,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
