import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.all(16),
    //   child: Container(
    //     width: 343,
    //     height: 44,
    //     child: TextButton(
    //       onPressed: () {

    //       },
    //       style: ButtonStyle(
    //         backgroundColor: MaterialStateProperty.all( ColorManager.primaryBlue),
    //         tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    //         minimumSize: MaterialStateProperty.all(
    //           const Size(double.infinity, 52),
    //         ),
    //         shape: MaterialStateProperty.all(
    //           RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(16),
    //           ),
    //         ),
    //       ),
    //       child: Text(
    //         'Get Started',
    //         style: Styles.font16White500Weight
    //       ),
    //     ),
    //   ),
    // );
    //   return
    //   Center(
    //     child: ElevatedButton(
    //       onPressed: () {
    //         // Define button action here
    //       },
    //       style: ElevatedButton.styleFrom(
    //         backgroundColor: ColorManager.primaryBlue, // Button color
    //         foregroundColor: ColorManager.white, // Text color
    //         padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(30), // Rounded corners
    //         ),
    //       ),
    //       child: Text('Get Started', style: Styles.font16White500Weight,),
    //     ),
    //   );
    // }
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            context.pushNamedAndRemoveUntil(
              Routes.GetStartedView,
              predicate: (route) => false,
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.primaryBlue,
            foregroundColor: ColorManager.white,
            padding: EdgeInsets.symmetric(vertical: 8.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
            ),
          ),
          child: Text('Get Started', style: Styles.font16White500Weight,),
        ),
      ),
    );
  }
}
