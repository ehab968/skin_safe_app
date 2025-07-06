import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';

class RecentSearchWidget extends StatelessWidget {
  const RecentSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> doctors = [
      {
        "id": 1,
        "name": "Dr. Hadia Amr",
        "specialty": "Dermatologist",
        "rating": 4.8,
        "image": "assets/images/DrHadiaAmr.png",
      },
      {
        "id": 2,
        "name": "Dr. Khalil Atef",
        "specialty": "Dermatologist",
        "rating": 4.6,
        "image": "assets/images/DrKhalilAtef.png",
      },
      {
        "id": 3,
        "name": "Dr. Mera Alaa",
        "specialty": "Dermatologist",
        "rating": 4.7,
        "image": "assets/images/DrMeraAlaa.png",
      },
    ];

    return SingleChildScrollView(
      child: SizedBox(
        height: 140.h,
        width: 340.w,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: doctors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: DoctorCard(
                id: doctors[index]["id"],
                name: doctors[index]["name"],
                specialty: doctors[index]["specialty"],
                rating: doctors[index]["rating"],
                image: doctors[index]["image"],
              ),
            );
          },
        ),
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  final int id;
  final String name;
  final String specialty;
  final double rating;
  final String image;

  const DoctorCard({
    super.key,
    required this.id,
    required this.name,
    required this.specialty,
    required this.rating,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190.w,
      height: 100.h,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 4)),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image, width: 80.w, height: 80.h),

          verticalSpace(height: 8.h),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  name,
                  style: Styles.font12Black500Weight,
                ),
                verticalSpace(height: 6.h),
                Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  specialty,
                  style: Styles.font11MainGray400Weight,
                ),
                verticalSpace(height: 6.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.star, color: Colors.blue, size: 12.sp),
                    horizontalSpace(width: 2.w),
                    Text(
                      rating.toString(),
                      style: Styles.font10PrimaryBlue500Weight,
                    ),
                  ],
                ),
                verticalSpace(height: 3.h),

                CustomTextButton(
                  backgroundColor: ColorManager.primaryBlue,
                  width: 75.w,
                  height: 35.h,
                  textName: 'Schedule',
                  onPressed: () {
                    context.pushNamed(Routes.bookingView, arguments: id);
                  },
                  textStyle: Styles.font11White500Weight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
