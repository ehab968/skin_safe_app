import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';

class BottomOfOnboarding extends StatelessWidget {
  const BottomOfOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Skip",
              style: TextStyle(color: ColorManager.black, fontSize: 16),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorManager.primaryBlue, // Background color
            ),
            child: IconButton(
              onPressed: () {
                context.pushNamed(Routes.SecondOnBoardingView);
              },
              icon: Icon(
                Icons.navigate_next_sharp,
                size: 24,
                color: Colors.white,
                weight: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class secondbottomscreen extends StatelessWidget {
  const secondbottomscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Skip",
              style: TextStyle(color: ColorManager.black, fontSize: 16),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorManager.primaryBlue, // Background color
            ),
            child: IconButton(
              onPressed: () {
                context.pushNamed(Routes.ThirdOnBoardingView);
              },
              icon: Icon(
                Icons.navigate_next_sharp,
                size: 24,
                color: Colors.white,
                weight: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}