import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/app_validator.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';
import 'package:skin_care_app/core/widgets/custom_text_form_field.dart';
import 'package:skin_care_app/features/authentication/forget_password/logic/cubit/forget_password_cubit.dart';
import 'package:skin_care_app/features/authentication/forget_password/ui/widgets/forget_password_bloclistner.dart';

class ForgetPasswordTextField extends StatefulWidget {
  const ForgetPasswordTextField({super.key});

  @override
  State<ForgetPasswordTextField> createState() =>
      _ForgetPasswordTextFieldState();
}

class _ForgetPasswordTextFieldState extends State<ForgetPasswordTextField> {
  FocusNode forgetPasswordFocusNode = FocusNode();
  bool isForgetPasswordFocused = false;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    setupForgetPasswordFocusNode();
    super.initState();
  }

  @override
  void dispose() {
    forgetPasswordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hint: 'Enter Your Email Or Phone Numbers',
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: context.read<ForgetPasswordCubit>().emailController,
            // String? Function(String?)? validator
            validator: AppValidators.validateEmailOrPhone,
            focusNode: forgetPasswordFocusNode,
            borderRadius: 10,
            backgroundColor:
                isForgetPasswordFocused
                    ? Colors.white
                    : ColorManager.lighterGray,
            hintStyle:
                isForgetPasswordFocused
                    ? Styles.font14PrimaryBlue300Weight
                    : Styles.font14LightGray300Weight,
          ),
          verticalSpace(height: 42),
          const ForgetPasswordBloclistner(),
          CustomTextButton(
            textName: 'Send the code',
            backgroundColor: ColorManager.primaryBlue,
            height: 48.h,
            width: double.infinity,
            textStyle: Styles.font16White500Weight,
            onPressed: () {
              validateAndPushNextView(context);
            },
          ),
        ],
      ),
    );
  }

  void validateAndPushNextView(BuildContext context) {
     if (formKey.currentState!.validate()) {
      context.read<ForgetPasswordCubit>().sendPasswordRecoveryEmail();
    }
  }
  
  void setupForgetPasswordFocusNode() {
    forgetPasswordFocusNode.addListener(() {
      setState(() {
        isForgetPasswordFocused = forgetPasswordFocusNode.hasFocus;
      });
    });
  }
}
