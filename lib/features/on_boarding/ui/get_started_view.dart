import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';
import 'package:skin_care_app/features/authentication/login/logic/login_cubit/login_cubit.dart';
import 'package:skin_care_app/features/authentication/sign_up/logic/sign_up_cubit/sign_up_cubit.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpace(height: 120.h),
              Container(
                child: Image.asset("assets/images/skin safe logo 1.png"),
                width: 221.w,
                height: 56.h,
              ),

              SizedBox(height: 48.h),
              Text(
                "Let's take the first step toward healthier\nand more safe skin",
                textAlign: TextAlign.center,
                style: Styles.font16Black400Weight,
              ),
              SizedBox(height: 96.h),
              CustomTextButton(
                backgroundColor: ColorManager.primaryBlue,
                textName: 'Login',
                height: 48.h,
                width: double.infinity,
                textStyle: Styles.font16White500Weight,
                borderRadius: BorderRadius.circular(10),
                onPressed: () {
                  context.pushNamed(Routes.loginView);
                 
                },
              ),
              verticalSpace(height: 16.h),
              
              CustomTextButton(
                borderSide: BorderSide(color: ColorManager.primaryBlue),
                backgroundColor: ColorManager.white,
                textStyle: Styles.font16PrimaryBlue500Weight,
                textName: 'Sign up',
                onPressed: () {
                  context.pushNamed(Routes.signUpView);
                 
                },
              ),
              verticalSpace(height: 60.h),
            ],
          ),
        ),
      ),
    );
  }
}
