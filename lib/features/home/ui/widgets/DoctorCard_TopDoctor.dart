import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class DoctorCard extends StatelessWidget {
  final String? doctorId;
  final String name;
  final String specialty;
  final double rating;
  final String distance;
  final String image;

  const DoctorCard({
    super.key,
    this.doctorId,
    required this.name,
    required this.specialty,
    required this.rating,
    required this.distance,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.aboutDoctorView);
      },
      child: SizedBox(
        width: 139.w,
        height: 165.h,
        child: Card(
          margin: const EdgeInsets.only(right: 14),
          color: ColorManager.white,
          shadowColor: Colors.black.withOpacity(0.3),
          elevation: 6,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                verticalSpace(height: 4.h),

                Padding(
                  // padding: EdgeInsets.all(8),
                  padding: const EdgeInsets.only(top: 16, left: 16),
                  child: SizedBox(
                    width: 80.w,
                    height: 80.w,
                    child: ClipOval(child: _buildDoctorImage()),
                  ),
                ),

                verticalSpace(height: 23.h),

                Flexible(
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),

                verticalSpace(height: 4.h),

                Flexible(
                  child: Text(
                    specialty,
                    style: Styles.font11MainGray400Weight,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),

                verticalSpace(height: 4.h),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star,
                        color: ColorManager.primaryBlue,
                        size: 12.sp,
                      ),
                      Text(
                        rating.toStringAsFixed(1),
                        style: Styles.font10PrimaryBlue500Weight,
                      ),
                      horizontalSpace(width: 4.w),
                      Icon(
                        Icons.location_on,
                        color: ColorManager.MainGray,
                        size: 12.sp,
                      ),
                      Flexible(
                        child: Text(
                          distance,
                          style: Styles.font10GrayLIGHT500Weight,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDoctorImage() {
    // Check if the image is a network URL or local asset
    if (image.startsWith('http') || image.startsWith('https')) {
      return Image.network(
        image,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          // Fallback to default asset image if network image fails
          return Image.asset('assets/images/doctorMale.jpg', fit: BoxFit.cover);
        },
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: CircularProgressIndicator(
              value:
                  loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
            ),
          );
        },
      );
    } else {
      // Use asset image
      return Image.asset(
        image,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Image.asset('assets/images/doctorMale.jpg', fit: BoxFit.cover);
        },
      );
    }
  }
}
