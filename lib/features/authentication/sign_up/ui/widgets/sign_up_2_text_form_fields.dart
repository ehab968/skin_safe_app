import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/app_validator.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_form_field.dart';
import 'package:skin_care_app/features/authentication/sign_up/ui/widgets/user_name_and_email_text_form_field.dart';

class SignUp2TextFormFields extends StatefulWidget {
  const SignUp2TextFormFields({super.key});

  @override
  State<SignUp2TextFormFields> createState() => _SignUp2TextFormFieldsState();
}

class _SignUp2TextFormFieldsState extends State<SignUp2TextFormFields> {
  bool isPasswordFocused = false;
  bool isConfirmPasswordFocused = false;
  FocusNode passwordFocusNode = FocusNode();
  FocusNode confirmPasswordFocusNode = FocusNode();
  bool isobsecure1 = true;
  bool isobsecure2 = true;
  @override
  void initState() {
    setupPasswordAndConfirmFocusNode();
    super.initState();
  }

  @override
  void dispose() {
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const UserNameAndEmailTextFormField(),
        verticalSpace(height: 16),
        Text('Password', style: Styles.font16Black400Weight),
        verticalSpace(height: 8),
        CustomTextFormField(
          hint: 'Enter Your Password',
          hintStyle: TextStyle(
            color:
                isPasswordFocused
                    ? ColorManager.primaryBlue
                    : ColorManager.lightGray,
          ),
          focusNode: passwordFocusNode,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.visiblePassword,
          validator: AppValidators.validatePassword,
          borderRadius: 10,
          isObscure: isobsecure1,
          backgroundColor:
              isPasswordFocused ? Colors.white : ColorManager.lighterGray,
          suffixIcon: IconButton(
            color:
                passwordFocusNode.hasFocus
                    ? ColorManager.primaryBlue
                    : ColorManager.lightGray,
            icon: Icon(
              size: 24.r,
              isobsecure1 ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: () {
              setState(() {
                isobsecure1 = !isobsecure1;
              });
            },
          ),
        ),
        verticalSpace(height: 16),
        Text('Confirm Password', style: Styles.font16Black400Weight),
        verticalSpace(height: 8),
        CustomTextFormField(
          hint: 'Confirm Password',
          hintStyle: TextStyle(
            color:
                isConfirmPasswordFocused
                    ? ColorManager.primaryBlue
                    : ColorManager.lightGray,
          ),
          focusNode: confirmPasswordFocusNode,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.visiblePassword,
          validator: AppValidators.validatePassword,
          borderRadius: 10,
          isObscure: isobsecure2,
          backgroundColor:
              isConfirmPasswordFocused
                  ? Colors.white
                  : ColorManager.lighterGray,
          suffixIcon: IconButton(
            color:
                confirmPasswordFocusNode.hasFocus
                    ? ColorManager.primaryBlue
                    : ColorManager.lightGray,
            icon: Icon(
              size: 24.r,
              isobsecure2 ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: () {
              setState(() {
                isobsecure2 = !isobsecure2;
              });
            },
          ),
        ),
      ],
    );
  }

  void setupPasswordAndConfirmFocusNode() {
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
