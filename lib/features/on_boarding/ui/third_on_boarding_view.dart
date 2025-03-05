import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/on_boarding/widgets/get_started_button.dart';
import 'package:skin_care_app/features/on_boarding/widgets/toggle_button_onBoarding.dart';

class ThirdOnBoardingView extends StatelessWidget {
  const ThirdOnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // SizedBox(height: 96.h),
              verticalSpace(height: 96),
              Center(
                child: Container(
                  width: 294.w,
                  height: 294.h,
                  child: Image.asset(
                    'assets/images/third_onboarding_screen_pic.png',
                  ),
                ),
              ),
              verticalSpace(height: 32),
              const Center(child: thirdtogglebutton()),
              verticalSpace(height: 40),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Informative",
                      style: Styles.font32PrimaryBlue400Weight,
                    ),
                    TextSpan(
                      text: " articles\n",
                      style: Styles.font32Black500Weight,
                    ),
                    TextSpan(
                      text: " for your skin",
                      style: Styles.font32Black500Weight,
                    ),
                  ],
                ),
              ),
              verticalSpace(height: 16),
              Center(
                child: Text(
                  "Learn about skin cancer types, symptomps,\n          prevention tips and treatments",
                  style: Styles.font14Black300Weight,
                ),
              ),
              verticalSpace(height: 40),
              const GetStartedButton(),
            ],
          ),
        ),
      ),
    );
  }
}
