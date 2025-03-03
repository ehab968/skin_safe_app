import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/app_validator.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_form_field.dart';

class UserNameAndEmailTextFormField extends StatelessWidget {
  const UserNameAndEmailTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          'User name',
          style: Styles.font16Black400Weight,
        ),
        verticalSpace(height: 8),
        const CustomTextFormField(
          hint: 'Enter Your User name',
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.emailAddress,
          validator: AppValidators.validateEmpty,
          borderRadius: 10,
        ),
        verticalSpace(height: 16),
        Text(
          'Email',
          style: Styles.font16Black400Weight,
        ),
        verticalSpace(height: 8),
        const CustomTextFormField(
          hint: 'Enter Your Email Or Phone Number',
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: AppValidators.validateEmailOrPhone,
          borderRadius: 10,
        ),
      ],
    );
  }
}
