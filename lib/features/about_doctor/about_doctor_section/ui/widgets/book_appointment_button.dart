import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';

class BookAppointmentButton extends StatelessWidget {
  final String? doctorId;

  const BookAppointmentButton({super.key, this.doctorId});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        CustomTextButton(
          backgroundColor: ColorManager.primaryBlue,
          textName: 'Book an Appointment',
          textStyle: Styles.font16White500Weight,
          onPressed: () {
            context.pushNamed(Routes.bookingView, arguments: doctorId);
          },
        ),
        verticalSpace(height: 32),
      ],
    );
  }
}
