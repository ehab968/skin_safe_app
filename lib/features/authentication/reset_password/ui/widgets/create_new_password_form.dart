import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/app_validator.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_form_field.dart';
import 'package:skin_care_app/features/authentication/reset_password/logic/cubit/reset_password_cubit.dart';
import 'package:skin_care_app/features/authentication/reset_password/ui/widgets/reset_password_text_button.dart';

class CreateNewPasswordForm extends StatefulWidget {
  const CreateNewPasswordForm({super.key});

  @override
  State<CreateNewPasswordForm> createState() => _CreateNewPasswordFormState();
}

class _CreateNewPasswordFormState extends State<CreateNewPasswordForm> {
  bool isEmailFocused = false;
  bool isPasswordFocused = false;
  bool isConfirmPasswordFocused = false;
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode confirmPasswordFocusNode = FocusNode();
  bool isobsecure1 = true;
  bool isobsecure2 = true;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    setupEmailPasswordAndConfirmFocusNode();
    super.initState();
  }

  @override
  void dispose() {
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hint: 'Enter Your Email',
            controller: context.read<ResetPasswordCubit>().emailController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            focusNode: emailFocusNode,
            borderRadius: 10,
            validator: AppValidators.validateEmail,
            backgroundColor:
                isEmailFocused ? Colors.white : ColorManager.lighterGray,
            hintStyle:
                isEmailFocused
                    ? Styles.font14PrimaryBlue300Weight
                    : Styles.font14LightGray300Weight,
          ),
          verticalSpace(height: 16),
          CustomTextFormField(
            hint: 'Enter Your New Password',
            controller:
                context.read<ResetPasswordCubit>().newPasswordController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            focusNode: passwordFocusNode,
            borderRadius: 10,
            isObscure: isobsecure1,
            validator: AppValidators.validatePassword,
            backgroundColor:
                isPasswordFocused ? Colors.white : ColorManager.lighterGray,
            hintStyle:
                isPasswordFocused
                    ? Styles.font14PrimaryBlue300Weight
                    : Styles.font14LightGray300Weight,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isobsecure1 = !isobsecure1;
                });
              },
              icon: Icon(
                size: 24.r,
                isobsecure1 ? Icons.visibility_off : Icons.visibility,
                color:
                    passwordFocusNode.hasFocus
                        ? ColorManager.primaryBlue
                        : ColorManager.lightGray,
              ),
            ),
          ),
          verticalSpace(height: 16),
          CustomTextFormField(
            hint: 'Confirm Password',
            controller:
                context.read<ResetPasswordCubit>().confirmPasswordController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            focusNode: confirmPasswordFocusNode,
            borderRadius: 10,
            isObscure: isobsecure2,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please confirm your password';
              }
              if (value !=
                  context
                      .read<ResetPasswordCubit>()
                      .newPasswordController
                      .text) {
                return 'Password does not match';
              }
              return null;
            },
            backgroundColor:
                isConfirmPasswordFocused
                    ? Colors.white
                    : ColorManager.lighterGray,
            hintStyle:
                isConfirmPasswordFocused
                    ? Styles.font14PrimaryBlue300Weight
                    : Styles.font14LightGray300Weight,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isobsecure2 = !isobsecure2;
                });
              },
              icon: Icon(
                size: 24.r,
                isobsecure2 ? Icons.visibility_off : Icons.visibility,
                color:
                    confirmPasswordFocusNode.hasFocus
                        ? ColorManager.primaryBlue
                        : ColorManager.lightGray,
              ),
            ),
          ),
          verticalSpace(height: 32),
          ResetPasswordTextButton(formKey: formKey),
        ],
      ),
    );
  }

  void setupEmailPasswordAndConfirmFocusNode() {
    emailFocusNode.addListener(() {
      setState(() {
        isEmailFocused = emailFocusNode.hasFocus;
      });
    });
    passwordFocusNode.addListener(() {
      setState(() {
        isPasswordFocused = passwordFocusNode.hasFocus;
      });
    });
    confirmPasswordFocusNode.addListener(() {
      setState(() {
        isConfirmPasswordFocused = confirmPasswordFocusNode.hasFocus;
      });
    });
  }
}
