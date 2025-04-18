import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/on_boarding/widgets/bottom_of_onBoarding.dart';
import 'package:skin_care_app/features/on_boarding/widgets/toggle_button_onBoarding.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpace(height: 96),
              Container(
                height: 342.h,
                width: 342.w,
                child: Image.asset(
                  'assets/images/first_onboarding_screen_pic.png',
                ),
              ),
              const Center(child: ToggleButtonOnboarding()),
              verticalSpace(height: 40),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Early ",
                      style: Styles.font32PrimaryBlue400Weight,
                    ),
                    TextSpan(
                      text: "Detection for\n",
                      style: Styles.font32Black500Weight,
                    ),
                    TextSpan(
                      text: "peace of mind",
                      style: Styles.font32Black500Weight,
                    ),
                  ],
                ),
              ),
              verticalSpace(height: 16),
              Center(
                child: Text(
                  "Use your camera to capture clear images of\n         moles, spots or areas of concern",
                  style: Styles.font14Black300Weight,
                ),
              ),
              verticalSpace(height: 40),

              const BottomOfOnboarding(),
            ],
          ),
        ),
      ),
    );
  }
}
