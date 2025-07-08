import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/widgets/doctor_details_column.dart';

class FirstDoctorDetailsSection extends StatelessWidget {
  const FirstDoctorDetailsSection({
    super.key,
    required this.doctorImage,
    required this.firstDoctorName,
    required this.secondDoctorName,
    required this.speciality,
    required this.experience,
    required this.rating,
    required this.reviews,
  });
  final String doctorImage;
  final String firstDoctorName;
  final String secondDoctorName;
  final String speciality;
  final int experience;
  final double rating;
  final int reviews;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 150.w,
          height: 150.h,
          child: CachedNetworkImage(
            imageUrl: doctorImage,
            fit: BoxFit.cover,
            errorWidget: (context, url, error) {
              return const Icon(Icons.error);
            },
          ),
        ),
        horizontalSpace(width: 31),
        DoctorDetailsColumn(
          firstDoctorName: firstDoctorName,
          secondDoctorName: secondDoctorName,
          speciality: speciality,
          experience: experience,
          rating: rating,
          reviews: reviews,
        ),
      ],
    );
  }
}
