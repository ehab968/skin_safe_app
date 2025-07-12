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
  final VoidCallback onViewDetails;

  const AppointmentCard({
    super.key,
    required this.status,
    required this.dateTime,
    required this.doctorName,
    required this.specialty,
    required this.location,
    required this.onViewDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Status and Date
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildStatusBadge(status),
              Text(dateTime, style: Styles.font14Black400Weight),
            ],
          ),
          verticalSpace(height: 16.h),

          // Doctor info
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctorName,
                style: Styles.font16Black600Weight,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(height: 4.h),
              Text(
                specialty,
                style: Styles.font14MainGray400Weight,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(height: 4.h),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 16.sp,
                    color: ColorManager.GrayDetails,
                  ),
                  horizontalSpace(width: 4.w),
                  Expanded(
                    child: Text(
                      location,
                      style: Styles.font12GrayDetails400Weight,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),

          verticalSpace(height: 16.h),

          // View details button
          Align(
            alignment: Alignment.centerRight,
            child: ViewDetailsButton(
              text: 'View Details',
              onPressed: onViewDetails,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusBadge(String status) {
    Color backgroundColor;
    Color textColor;
    String text;

    switch (status.toLowerCase()) {
      case 'upcoming':
        backgroundColor = ColorManager.primaryBlue.withOpacity(0.1);
        textColor = ColorManager.primaryBlue;
        text = 'Upcoming';
        break;
      case 'past':
        backgroundColor = Colors.grey.withOpacity(0.1);
        textColor = Colors.grey;
        text = 'Past';
        break;
      case 'cancelled':
        backgroundColor = Colors.red.withOpacity(0.1);
        textColor = Colors.red;
        text = 'Cancelled';
        break;
      default:
        backgroundColor = ColorManager.primaryBlue.withOpacity(0.1);
        textColor = ColorManager.primaryBlue;
        text = 'Upcoming';
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
