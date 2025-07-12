import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';

class DoctorInfo extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final String imageUrl;

  const DoctorInfo({
    super.key,
    this.doctorName = 'Dr.Hady Helmy',
    this.specialty = 'Dermatologist',
    this.imageUrl = '',
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 105.w,
          height: 105.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image:
                  imageUrl.isNotEmpty
                      ? NetworkImage(imageUrl) as ImageProvider
                      : const AssetImage('assets/images/doctorMale.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),

        horizontalSpace(width: 32.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctorName,
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(height: 8.h),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: ColorManager.primaryBlue.withAlpha(42),
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Text(
                  specialty,
                  style: const TextStyle(
                    color: ColorManager.primaryBlue,
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
