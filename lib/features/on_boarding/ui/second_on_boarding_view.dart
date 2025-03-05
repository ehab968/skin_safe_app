import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import "package:skin_care_app/core/theme/styles.dart";
import 'package:skin_care_app/features/on_boarding/widgets/bottom_of_onBoarding.dart';
import 'package:skin_care_app/features/on_boarding/widgets/toggle_button_onBoarding.dart';

class SecondOnBoardingView extends StatelessWidget {
  const SecondOnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpace(height: 96),
              Center(
                child: Container(
                  width: 294.w,
                  height: 294.h,
                  child: Image.asset('assets/images/second_onboarding_screen_pic.png')),
              ),
                verticalSpace(height: 32),
              const Center(child: secondtoggleButton()),
              verticalSpace(height: 40),
             RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
          text: "Easy, ",
          style:  Styles.font32PrimaryBlue400Weight,
                ),
                TextSpan(
          text: "on-demand\n",
          style: Styles.font32Black500Weight,
                ),
                TextSpan(
          text: "access to specialists",
          style: Styles.font32Black500Weight,
                ),
              ],
            ),
          ),
          verticalSpace(height: 16),
           Center(
             child: Text( "   connect you with certified dermatologists for\n                    expert advice and care",
             style: Styles.font14Black300Weight ,),
        ),
        verticalSpace(height: 40),

const secondbottomscreen(),
        ],
          ),
        ),
      ),
    );
  }
}
