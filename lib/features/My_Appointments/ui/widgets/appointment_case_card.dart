import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/My_Appointments/ui/widgets/view_details.dart';

class AppointmentCard extends StatelessWidget {
  final String status;
  final String dateTime;
  final String doctorName;
  final String specialty;
  final String location;
  final String image;
  final VoidCallback onViewDetails;

  const AppointmentCard({
    required this.status,
    required this.dateTime,
    required this.doctorName,
    required this.specialty,
    required this.location,
    required this.image,
    required this.onViewDetails,
    super.key,
  });

  Color get statusColor {
    switch (status) {
      case 'upcoming':
        return ColorManager.UpComingCaseColor;
      case 'cancelled':
        return ColorManager.CancelledCaseColor;
      case 'past':
      default:
        return ColorManager.PastCaseColor;
    }
  }

  String get statusText {
    switch (status) {
      case 'upcoming':
        return "Upcoming Appointment";
      case 'cancelled':
        return "Cancelled Appointment";
      case 'past':
      default:
        return "Past Appointment";
    }
  }

  TextStyle get statusTextStyle {
    switch (status) {
      case 'upcoming':
        return const TextStyle(
          color: ColorManager.UpcomingText,
          fontWeight: FontWeight.w700,
        );
      case 'cancelled':
        return const TextStyle(
          color: ColorManager.CancelledText,
          fontWeight: FontWeight.w700,
        );
      default:
        return const TextStyle(
          color: ColorManager.black,
          fontWeight: FontWeight.w700,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorManager.white,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Container(
            width: double.infinity,
            color: statusColor,
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(statusText, style: statusTextStyle),
                verticalSpace(height: 2.h),
                Text(dateTime, style: Styles.font14MainGray300Weight),
              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(doctorName, style: Styles.font16Black500Weight),
                      verticalSpace(height: 1.h),
                      Text(specialty, style: Styles.font14MainGray400Weight),
                      verticalSpace(height: 8.h),
                      Text(location, style: Styles.font12GrayDetails400Weight),
                    ],
                  ),
                ),
              
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(image),
                      radius: 30.sp,
                    ),
                    verticalSpace(height: 16.h),

                    Center(child: ViewDetailsButton()),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
