import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/helper/app_validator.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_form_field.dart';
import 'package:skin_care_app/features/authentication/login/logic/login_cubit/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  FocusNode passwordFocusNode = FocusNode();
  bool isPasswordFocused = false;
  bool isobsecure = true;
  @override
  void initState() {
    setupEmailAndPasswordFocusNode();
    super.initState();
  }

  @override
  void dispose() {
    passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email',
            style: Styles.font16Black400Weight,
          ),
          verticalSpace(height: 8),
          const CustomTextFormField(
            hint: 'Enter Your Email Or Phone Number',
            autovalidateMode: AutovalidateMode.onUserInteraction,
            borderRadius: 10,
            validator: AppValidators.validateEmailOrPhone,
          ),
          verticalSpace(height: 32),
          Text(
            'Password',
            style: Styles.font16Black400Weight,
          ),
          verticalSpace(height: 8),
          CustomTextFormField(
            hint: 'Enter Your Password',
            autovalidateMode: AutovalidateMode.onUserInteraction,
            focusNode: passwordFocusNode,
            borderRadius: 10,
            isObscure: isobsecure,
            validator: AppValidators.validatePassword,
            backgroundColor:
                isPasswordFocused ? Colors.white : ColorManager.lighterGray,
            hintStyle: isPasswordFocused
                ? Styles.font14PrimaryBlue300Weight
                : Styles.font14LightGray300Weight,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isobsecure = !isobsecure;
                });
              },
              icon: Icon(
                size: 24,
                isobsecure ? Icons.visibility_off : Icons.visibility,
                color: passwordFocusNode.hasFocus
                    ? ColorManager.primaryBlue
                    : ColorManager.lightGray,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void setupEmailAndPasswordFocusNode() {
    passwordFocusNode.addListener(() {
      setState(() {
        isPasswordFocused = passwordFocusNode.hasFocus;
      });
    });
  }
}
