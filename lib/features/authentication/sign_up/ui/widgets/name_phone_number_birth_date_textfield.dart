import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/app_validator.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_form_field.dart';

class NamePhoneNumberBirthDateTextfield extends StatelessWidget {
  const NamePhoneNumberBirthDateTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Name',
          style: Styles.font16Black400Weight,
        ),
        verticalSpace(height: 8),
        const CustomTextFormField(
          hint: 'Enter Your Full name',
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: AppValidators.validateEmpty,
          borderRadius: 10,
        ),
        verticalSpace(height: 16),
        Text(
          'Phone Number',
          style: Styles.font16Black400Weight,
        ),
        verticalSpace(height: 8),
        const CustomTextFormField(
          hint: '(+20) 10 222 333 44',
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.phone,
          validator: AppValidators.validatePhoneNumber,
          borderRadius: 10,
        ),
        verticalSpace(height: 16),
        Text(
          'Date of Birth',
          style: Styles.font16Black400Weight,
        ),
        verticalSpace(height: 8),
        const CustomTextFormField(
          hint: 'DD/MM/YY',
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.datetime,
          validator: AppValidators.validateDate,
          borderRadius: 10,
        ),
      ],
    );
  }
}
