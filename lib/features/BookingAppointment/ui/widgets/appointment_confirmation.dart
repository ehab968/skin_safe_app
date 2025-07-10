import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';
import 'package:skin_care_app/features/Appointment_details/data/models/appointment_details_response.dart';
import 'package:intl/intl.dart';

class AppointmentConfirmationDialog extends StatelessWidget {
  final String? doctorName;
  final String? appointmentDate;
  final String? appointmentTime;
  final AppointmentDetailsResponse? appointmentDetails;
  final String? appointmentId;

  const AppointmentConfirmationDialog({
    super.key,
    this.doctorName,
    this.appointmentDate,
    this.appointmentTime,
    this.appointmentDetails,
    this.appointmentId,
  });

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
      content: AppointmentConfirmationContent(
        doctorName: doctorName,
        appointmentDate: appointmentDate,
        appointmentTime: appointmentTime,
        appointmentDetails: appointmentDetails,
        appointmentId: appointmentId,
      ),
    );
  }
}

class AppointmentConfirmationContent extends StatelessWidget {
  final String? doctorName;
  final String? appointmentDate;
  final String? appointmentTime;
  final AppointmentDetailsResponse? appointmentDetails;
  final String? appointmentId;

  const AppointmentConfirmationContent({
    super.key,
    this.doctorName,
    this.appointmentDate,
    this.appointmentTime,
    this.appointmentDetails,
    this.appointmentId,
  });

  @override
  Widget build(BuildContext context) {
    // Use appointment details if available, otherwise use passed parameters
    String displayDoctorName =
        appointmentDetails?.data.doctor.fullName ?? doctorName ?? 'Doctor';
    String? displayDate = _formatAppointmentDate();
    String? displayTime = appointmentDetails?.data.timeSlot ?? appointmentTime;

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
          'Thank you for choosing us! Your appointment with $displayDoctorName has been confirmed.',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
        verticalSpace(height: 16.h),

        // Appointment Details
        if (displayDate != null ||
            displayTime != null ||
            appointmentDetails != null)
          _buildAppointmentDetailsCard(displayDate, displayTime),

        verticalSpace(height: 20.h),
        AppointmentConfirmationButtons(appointmentId: appointmentId),
      ],
    );
  }

  String? _formatAppointmentDate() {
    if (appointmentDetails?.data.date != null) {
      try {
        final date = DateTime.parse(appointmentDetails!.data.date);
        return DateFormat('MMM dd, yyyy').format(date);
      } catch (e) {
        return appointmentDetails!.data.date;
      }
    }
    return appointmentDate;
  }

  Widget _buildAppointmentDetailsCard(
    String? displayDate,
    String? displayTime,
  ) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: ColorManager.primaryBlue.withOpacity(0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: ColorManager.primaryBlue.withOpacity(0.2)),
      ),
      child: Column(
        children: [
          Text(
            'Appointment Details',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: ColorManager.primaryBlue,
            ),
          ),
          verticalSpace(height: 12.h),

          // Appointment ID (if available)
          if (appointmentId != null || appointmentDetails?.data.id != null) ...[
            _buildDetailRow(
              'Appointment ID:',
              appointmentDetails?.data.id ?? appointmentId!,
            ),
            verticalSpace(height: 8.h),
          ],

          // Date
          if (displayDate != null) ...[
            _buildDetailRow('Date:', displayDate),
            verticalSpace(height: 8.h),
          ],

          // Time
          if (displayTime != null) ...[
            _buildDetailRow('Time:', displayTime),
            verticalSpace(height: 8.h),
          ],

          // Doctor specialty (if available from details)
          if (appointmentDetails?.data.doctor.specialty != null) ...[
            _buildDetailRow(
              'Specialty:',
              _truncateSpecialty(appointmentDetails!.data.doctor.specialty),
            ),
            verticalSpace(height: 8.h),
          ],

          // Patient name (if available from details)
          if (appointmentDetails?.data.patient.name != null) ...[
            _buildDetailRow('Patient:', appointmentDetails!.data.patient.name),
          ],
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
        ),
        Expanded(
          child: Text(
            value,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
            textAlign: TextAlign.right,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  String _truncateSpecialty(String specialty) {
    if (specialty.length > 50) {
      return '${specialty.substring(0, 50)}...';
    }
    return specialty;
  }
}

class AppointmentConfirmationButtons extends StatelessWidget {
  final String? appointmentId;

  const AppointmentConfirmationButtons({super.key, this.appointmentId});

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
