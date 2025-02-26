import 'package:flutter/material.dart';
import 'package:skin_care_app/core/theme/colors.dart';

class ToggleButtonOnboarding extends StatelessWidget {
  const ToggleButtonOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container( width: 26,
            height: 8,
            decoration: BoxDecoration(
              color: ColorManager.primaryBlue,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          SizedBox(width: 4),
          Container(
             width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: ColorManager.morelightergray,
              shape: BoxShape.circle, 
            ),
          ),
          SizedBox(width: 4),
           Container(
             width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: ColorManager.morelightergray,
              shape: BoxShape.circle, 
            ),
          ),
      ],
    );
  }
}
class secondtoggleButton extends StatelessWidget {
  const secondtoggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Container(
             width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: ColorManager.morelightergray,
              shape: BoxShape.circle, 
            ),
          ),
          SizedBox(width: 4,),
           Container( width: 26,
            height: 8,
            decoration: BoxDecoration(
              color: ColorManager.primaryBlue,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          SizedBox(width: 4),
           Container(
             width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: ColorManager.morelightergray,
              shape: BoxShape.circle, 
            ),
          ),
      ],
    );
  }
}
class thirdtogglebutton extends StatelessWidget {
  const thirdtogglebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Container(
             width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: ColorManager.morelightergray,
              shape: BoxShape.circle, 
            ),
          ),
          SizedBox(width: 4,),
           Container(
             width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: ColorManager.morelightergray,
              shape: BoxShape.circle, 
            ),
          ),
          SizedBox(width: 4,),
          Container( width: 26,
            height: 8,
            decoration: BoxDecoration(
              color: ColorManager.primaryBlue,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
      ],
    );
  }
}
