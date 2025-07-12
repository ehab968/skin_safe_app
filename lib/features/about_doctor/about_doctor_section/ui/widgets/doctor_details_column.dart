import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/widgets/doctor_rate.dart';

class DoctorDetailsColumn extends StatelessWidget {
  const DoctorDetailsColumn({
    super.key,
    required this.firstDoctorName,
    required this.secondDoctorName,
    required this.speciality,
    required this.experience,
    required this.rating,
    required this.reviews,
  });
  final String firstDoctorName;
  final String secondDoctorName;
  final String speciality;
  final int experience;
  final double rating;
  final int reviews;
  @override
  Widget build(BuildContext context) {
    String fullName = 'Dr.$firstDoctorName $secondDoctorName';
    String shortName = 'Dr.$firstDoctorName';
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            fullName.length > 13 ? shortName : fullName,
            style: Styles.font20Black500Weight.copyWith(
              fontWeight: FontWeight.w600,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          verticalSpace(height: 8),
          Container(
            width: 125.w,
            height: 24.h,
            decoration: BoxDecoration(
              color: ColorManager.primaryBluelighter,
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Center(
              child: Text(speciality, style: Styles.font16PrimaryBlue400Weight),
            ),
          ),
          verticalSpace(height: 8),
          Text(
            '$experience years experience',
            style: Styles.font16Black400Weight,
          ),
          verticalSpace(height: 8),
          DoctorRate(rating: rating, reviews: reviews),
        ],
      ),
    );
  }
}
