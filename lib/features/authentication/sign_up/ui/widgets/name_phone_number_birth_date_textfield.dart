import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/helper/app_validator.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_form_field.dart';
import 'package:skin_care_app/features/authentication/sign_up/logic/sign_up_cubit/sign_up_cubit.dart';

class NamePhoneNumberBirthDateTextfield extends StatelessWidget {
  const NamePhoneNumberBirthDateTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Name', style: Styles.font16Black400Weight),
        verticalSpace(height: 8),
        CustomTextFormField(
          hint: 'Enter Your Full name',
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: AppValidators.validateEmpty,
          borderRadius: 10,
          controller: context.read<SignUpCubit>().nameController,
        ),
        verticalSpace(height: 16),
        Text('Phone Number', style: Styles.font16Black400Weight),
        verticalSpace(height: 8),
        CustomTextFormField(
          hint: '(+20) 10 222 333 44',
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.phone,
          validator: AppValidators.validatePhoneNumber,
          borderRadius: 10,
          controller: context.read<SignUpCubit>().phoneNumberController,
        ),
        verticalSpace(height: 16),
        Text('Date of Birth', style: Styles.font16Black400Weight),
        verticalSpace(height: 8),
        CustomTextFormField(
          hint: 'DD/MM/YYYY',
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.datetime,
          validator: AppValidators.validateDate,
          borderRadius: 10,
          controller: context.read<SignUpCubit>().dateOfBirthController,
        ),
      ],
    );
  }
}
