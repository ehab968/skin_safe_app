import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';
import 'package:skin_care_app/features/authentication/sign_up/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:skin_care_app/features/authentication/sign_up/ui/widgets/agree_terms_and_privacy_police.dart';
import 'package:skin_care_app/features/authentication/sign_up/ui/widgets/already_have_account_section.dart';
import 'package:skin_care_app/features/authentication/sign_up/ui/widgets/sign_up_2_text_form_fields.dart';

class SignUpView2 extends StatelessWidget {
  const SignUpView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Form(
            key: context.read<SignUpCubit>().formKey2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(height: 80),
                Text('Sign up', style: Styles.font24Black600Weight),
                verticalSpace(height: 16),
                const SignUp2TextFormFields(),
                verticalSpace(height: 16),
                const AgreeTermsAndPrivacyPolice(),
                verticalSpace(height: 32),
                CustomTextButton(
                  textStyle: Styles.font16White500Weight,
                  textName: 'Sign up',
                  onPressed: () {
                    if (context
                        .read<SignUpCubit>()
                        .formKey2
                        .currentState!
                        .validate()) {
                      context.pushNamedAndRemoveUntil(
                        Routes.homeView,
                        predicate: (route) => false,
                      );
                    }
                  },
                ),
                verticalSpace(height: 8),
                const AlreadyHaveAccountSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
