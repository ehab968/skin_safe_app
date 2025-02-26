import 'package:flutter/material.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/on_boarding/widgets/bottom_of_onBoarding.dart';
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
              SizedBox(height: 96),
              Center(
                child: Container(
                  width: 294,
                  height: 294,
                  child: Image.asset('assets/images/third_onboarding_screen_pic.png')),
              ),
                SizedBox(height: 32,),
              Center(child: thirdtogglebutton()),
              SizedBox(height: 40),
             RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
          text: "Informative",
          style:  Styles.font14PrimaryBlue400Weight,
                ),
                TextSpan(
          text: " articles\n",
          style: Styles.font14Black500Weight,
                ),
                TextSpan(
          text: " for your skin",
          style: Styles.font14Black500Weight,
                ),
              ],
            ),
          ),
           SizedBox(height: 16,),
           Center(
             child: Text( "Learn about skin cancer types, symptomps,\n          prevention tips and treatments",
             style: Styles.font14Black300Weight ,),
        ),
        SizedBox(height: 40,),
GetStartedButton(),

        ],
          ),
        ),
      ),
    );
  }
}
