import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';
import 'package:skin_care_app/features/home/data/models/top_doctors_model.dart';

class SearchResultsWidget extends StatelessWidget {
  final List<TopDoctorsModel> doctors;
  final Function(TopDoctorsModel) onDoctorTap;
  final bool isRecentSearch;

  const SearchResultsWidget({
    super.key,
    required this.doctors,
    required this.onDoctorTap,
    this.isRecentSearch = false,
  });

  @override
  Widget build(BuildContext context) {
    if (doctors.isEmpty) {
      return SizedBox(
        height: 200.h,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                isRecentSearch ? Icons.history : Icons.search_off,
                size: 48,
                color: ColorManager.lightGray,
              ),
              SizedBox(height: 16.h),
              Text(
                isRecentSearch ? 'No recent searches' : 'No doctors found',
                style: Styles.font16Gray400Weight,
              ),
            ],
          ),
        ),
      );
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: doctors.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: SearchDoctorCard(
            doctor: doctors[index],
            onTap: () => onDoctorTap(doctors[index]),
            isRecentSearch: isRecentSearch,
          ),
        );
      },
    );
  }
}

class SearchDoctorCard extends StatelessWidget {
  final TopDoctorsModel doctor;
  final VoidCallback onTap;
  final bool isRecentSearch;

  const SearchDoctorCard({
    super.key,
    required this.doctor,
    required this.onTap,
    this.isRecentSearch = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
          border: Border.all(
            color:
                isRecentSearch
                    ? ColorManager.primaryBlue.withOpacity(0.3)
                    : Colors.transparent,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            // Doctor Image
            Container(
              width: 80.w,
              height: 80.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorManager.lighterGray,
              ),
              child:
                  doctor.image != null && doctor.image!.isNotEmpty
                      ? ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          doctor.image!,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Icon(
                              Icons.person,
                              size: 40.sp,
                              color: ColorManager.lightGray,
                            );
                          },
                        ),
                      )
                      : Icon(
                        Icons.person,
                        size: 40.sp,
                        color: ColorManager.lightGray,
                      ),
            ),

            horizontalSpace(width: 12.w),

            // Doctor Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor.fullName,
                    style: Styles.font16Black600Weight,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(height: 4.h),
                  Text(
                    doctor.specialty ?? 'Dermatologist',
                    style: Styles.font14MainGray400Weight,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(height: 8.h),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16.sp),
                      horizontalSpace(width: 4.w),
                      Text(
                        doctor.ratingsAverage?.toStringAsFixed(1) ?? '0.0',
                        style: Styles.font14Black500Weight,
                      ),
                      horizontalSpace(width: 8.w),
                      if (isRecentSearch)
                        Icon(
                          Icons.history,
                          color: ColorManager.lightGray,
                          size: 16.sp,
                        ),
                    ],
                  ),
                ],
              ),
            ),

            // Schedule Button
            CustomTextButton(
              backgroundColor: ColorManager.primaryBlue,
              width: 80.w,
              height: 35.h,
              textName: 'Schedule',
              onPressed: () {
                context.pushNamed(Routes.bookingView, arguments: doctor);
              },
              textStyle: Styles.font11White500Weight,
            ),
          ],
        ),
      ),
    );
  }
}
