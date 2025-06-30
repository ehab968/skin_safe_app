import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/Home/ui/widgets/recent_search_doctors.dart';
import 'package:skin_care_app/features/Home/ui/widgets/top_doctors_bloc_builder.dart';
import 'package:skin_care_app/features/Home/ui/widgets/uv_index.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var uvIndexArcPainter = UVIndexArcPainter(5);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 24.w),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "All Services for\nyour skin health",
                        style: Styles.font16Black500Weight,
                      ),
                      IconButton(
                        onPressed: () {
                          context.pushNamed(Routes.NotificationsScreen);
                        },
                        icon: Icon(
                          Icons.notifications_none_rounded,
                          size: 24.sp,
                          weight: 20.sp,
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(height: 16.h),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.h,
                      vertical: 4.w,
                    ),
                    decoration: BoxDecoration(
                      color: ColorManager.lighterGray,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search for doctor, articles...",
                        hintStyle: Styles.font14LightGray300Weight,
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search_sharp,
                          size: 24.sp,
                          weight: 1.sp,
                          color: ColorManager.lightGray,
                        ),
                      ),
                    ),
                  ),
                  verticalSpace(height: 24.h),
                  UvIndex(),
                  verticalSpace(height: 24.h),
                  Text('Top Doctors', style: Styles.font18Black600Weight),
                  verticalSpace(height: 16.h),
                  const TopDoctorsBlocBuilder(),
                  verticalSpace(height: 24.h),
                  Text('Recent Search', style: Styles.font18Black600Weight),
                  verticalSpace(height: 24.h),
                  const RecentSearchWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
