import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/snackbar.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';
import 'package:skin_care_app/features/authentication/sign_up/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:skin_care_app/features/authentication/sign_up/ui/widgets/gender_radio_button.dart';
import 'package:skin_care_app/features/authentication/sign_up/ui/widgets/name_phone_number_birth_date_textfield.dart';
import 'package:skin_care_app/features/authentication/sign_up/ui/widgets/skin_tone_drop_down.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: FormBuilder(
          key: context.read<SignUpCubit>().formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(height: 80),
                Text('Sign up', style: Styles.font24Black600Weight),
                verticalSpace(height: 16),
                const NamePhoneNumberBirthDateTextfield(),
                verticalSpace(height: 16),
                const GenderRadioButtons(),
                const SkinToneDropDown(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.14),
                CustomTextButton(
                  backgroundColor: ColorManager.primaryBlue,
                  textStyle: Styles.font16White500Weight,
                  textName: 'Continue',
                  onPressed: () {
                    validateThenCompleteSignup(context);
                  },
                ),
                verticalSpace(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenCompleteSignup(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      snackBarShow(context, 'complete the second step of sign up');
      context.pushNamed(Routes.signUpView2);
    }
  }
}
