import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';

class AppointmentConfirmationDialog extends StatelessWidget {
  const AppointmentConfirmationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 40.0,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      backgroundColor: ColorManager.white,
      content: const AppointmentConfirmationContent(),
    );
  }
}

class AppointmentConfirmationContent extends StatelessWidget {
  const AppointmentConfirmationContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
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
        const AppointmentConfirmationButtons(),
      ],
    );
  }
}

class AppointmentConfirmationButtons extends StatelessWidget {
  const AppointmentConfirmationButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomTextButton(
          backgroundColor: ColorManager.primaryBlue,
          textName: 'View Details',
          height: 40.h,
          width: double.infinity,
          textStyle: Styles.font16White500Weight,
          onPressed: () {
            context.pushReplacementNamed(Routes.appointmentScreen);
          },
        ),

        verticalSpace(height: 8.h),
        CustomTextButton(
          backgroundColor: ColorManager.white,
          borderSideColor: ColorManager.primaryBlue,
          textName: 'Back to home',
          height: 40.h,
          width: double.infinity,
          textStyle: Styles.font16PrimaryBlue500Weight,
          onPressed: () {
            context.pushNamedAndRemoveUntil(
              Routes.homeView,
              predicate: (route) => false,
            );
          },
        ),
      ],
    );
  }
}
