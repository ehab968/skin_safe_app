import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';

class showAppointmentConfirmation extends StatelessWidget {
  void showAppointmentConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true, 
      builder: (BuildContext context) {
        return AppointmentConfirmationDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: ColorManager.white);
  }
}

class AppointmentConfirmationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),  
      ),
      contentPadding: EdgeInsets.only(right: 16, left: 16, top: 16),
      backgroundColor: ColorManager.white,
      content: SizedBox(
        width: 343,
        height: 380,
        child: AppointmentConfirmationContent(),
      ),
    );
  }
}

class AppointmentConfirmationContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        verticalSpace(height: 16.h),
        Image.asset(
          'assets/images/confirmation.png',
          width: 80.w,
          height: 80.h,
        ),
        verticalSpace(height: 24.h),
        Text(
          'Your Appointment Is Successfully Booked!',
          style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        verticalSpace(height: 20.h),
        Text(
          'Thank you for choosing us! Your  appointment with Dr.Hady has been\n confirmed.',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
        verticalSpace(height: 20.h),
        AppointmentConfirmationButtons(),
      ],
    );
  }
}

class AppointmentConfirmationButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        CustomTextButton(
          textName: 'View Details',
          height: 40.h,
          width: double.infinity,
          textStyle: Styles.font16White500Weight,
          onPressed: () {
            // context.pushNamed(Routes.AppointmentScreen);
          },
        ),

        verticalSpace(height: 8.h),
        CustomTextButton(
          borderSide: BorderSide(color: ColorManager.primaryBlue),
          backgroundColor: ColorManager.white,
          textName: 'Back to home',
          height: 40.h,
          width: double.infinity,
          textStyle: Styles.font16PrimaryBlue500Weight,
          onPressed: () {
            context.pushNamed(Routes.homeView);
          },
        ),
      ],
    );
  }
}
