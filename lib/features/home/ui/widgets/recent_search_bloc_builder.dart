import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';
import 'package:skin_care_app/features/home/logic/cubit/recent_search_cubit.dart';
import 'package:skin_care_app/features/home/logic/cubit/search_state.dart';
import 'package:skin_care_app/features/home/data/models/top_doctors_model.dart';

class RecentSearchBlocBuilder extends StatelessWidget {
  const RecentSearchBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RecentSearchCubit, SearchState>(
      listener: (context, state) {
        // Handle any side effects if needed
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => _buildShimmerLoading(),
          recentSearchSuccess: (recentDoctors) {
            if (recentDoctors.isEmpty) {
              return _buildEmptyState();
            }
            return _buildRecentSearchList(context, recentDoctors);
          },
          error: (error) => _buildEmptyState(),
          orElse: () => _buildEmptyState(),
        );
      },
    );
  }

  Widget _buildRecentSearchList(
    BuildContext context,
    List<TopDoctorsModel> doctors,
  ) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 140.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: doctors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 12.w),
              child: RecentDoctorCard(
                doctor: doctors[index],
                onTap: () {
                  // Update recent search timestamp and navigate
                  context.read<RecentSearchCubit>().saveToRecentSearch(
                    doctors[index],
                  );
                  // You can add navigation to doctor details here
                  // context.pushNamed(Routes.doctorDetails, arguments: doctors[index]);
                },
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildShimmerLoading() {
    return SizedBox(
      height: 140.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: Container(
              width: 190.w,
              height: 120.h,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildEmptyState() {
    return SizedBox(
      height: 120.h,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorManager.lighterGray.withOpacity(0.5),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: ColorManager.lightGray.withOpacity(0.3),
            width: 1,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.history, size: 32.sp, color: ColorManager.lightGray),
              verticalSpace(height: 8.h),
              Text(
                'No recent searches',
                style: Styles.font14LightGray300Weight,
              ),
              verticalSpace(height: 4.h),
              Text(
                'Search for doctors to see them here',
                style: Styles.font12GrayDetails400Weight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecentDoctorCard extends StatelessWidget {
  final TopDoctorsModel doctor;
  final VoidCallback onTap;

  const RecentDoctorCard({
    super.key,
    required this.doctor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        width: 190.w,
        height: 120.h,
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 4),
            ),
          ],
          border: Border.all(
            color: ColorManager.primaryBlue.withOpacity(0.2),
            width: 1,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Doctor Image
            Container(
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorManager.lighterGray,
              ),
              child:
                  doctor.image != null && doctor.image!.isNotEmpty
                      ? ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          doctor.image!,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Icon(
                              Icons.person,
                              size: 30.sp,
                              color: ColorManager.lightGray,
                            );
                          },
                        ),
                      )
                      : Icon(
                        Icons.person,
                        size: 30.sp,
                        color: ColorManager.lightGray,
                      ),
            ),

            horizontalSpace(width: 8.w),

            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    doctor.fullName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.font12Black500Weight,
                  ),
                  verticalSpace(height: 4.h),
                  Text(
                    doctor.specialty ?? 'Dermatologist',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.font11MainGray400Weight,
                  ),
                  verticalSpace(height: 6.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.blue, size: 12.sp),
                      horizontalSpace(width: 2.w),
                      Text(
                        doctor.ratingsAverage?.toStringAsFixed(1) ?? '0.0',
                        style: Styles.font10PrimaryBlue500Weight,
                      ),
                    ],
                  ),
                  verticalSpace(height: 6.h),

                  CustomTextButton(
                    backgroundColor: ColorManager.primaryBlue,
                    width: 75.w,
                    height: 30.h,
                    textName: 'Schedule',
                    onPressed: () {
                      context.pushNamed(
                        Routes.bookingView,
                        arguments: doctor.id,
                      );
                    },
                    textStyle: Styles.font11White500Weight,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
