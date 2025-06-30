import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';
import 'package:skin_care_app/features/authentication/reset_password/logic/cubit/reset_password_cubit.dart';

class ResetPasswordTextButton extends StatelessWidget {
  const ResetPasswordTextButton({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      textName: 'Reset Password',
      backgroundColor: ColorManager.primaryBlue,
      height: 48.h,
      width: double.infinity,
      textStyle: Styles.font16White500Weight,
      onPressed: () {
        if (formKey.currentState!.validate()) {
          context.read<ResetPasswordCubit>().resetPassword();
        }
      },
    );
  }
}
