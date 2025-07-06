import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/di/dependancy_injection.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/home/data/models/top_doctors_model.dart';
import 'package:skin_care_app/features/home/logic/cubit/top_doctors_cubit.dart';
import 'package:skin_care_app/features/home/logic/cubit/top_doctors_state.dart';
import 'package:skin_care_app/features/home/ui/widgets/DoctorCard_TopDoctor.dart';
import 'package:skin_care_app/features/home/ui/widgets/doctors_shimmer_loading.dart';

class AllDoctorsView extends StatelessWidget {
  const AllDoctorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TopDoctorsCubit>()..getAllDoctorsComplete(),
      child: Scaffold(
        backgroundColor: ColorManager.white,
        appBar: AppBar(
          backgroundColor: ColorManager.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios,
              color: ColorManager.black,
              size: 20.sp,
            ),
          ),
          title: Text('All Doctors', style: Styles.font18Black600Weight),
          centerTitle: true,
        ),
        body: const AllDoctorsViewBody(),
      ),
    );
  }
}

class AllDoctorsViewBody extends StatelessWidget {
  const AllDoctorsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopDoctorsCubit, TopDoctorsState>(
      buildWhen:
          (previous, current) =>
              current is TopDoctorsLoading ||
              current is TopDoctorsSuccess ||
              current is TopDoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const DoctorsShimmerLoading(),
          success: (doctors) => _buildDoctorsGrid(doctors),
          error:
              (apiErrorModel) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline,
                      size: 64.sp,
                      color: ColorManager.lightGray,
                    ),
                    verticalSpace(height: 16.h),
                    Text(
                      'Error: ${apiErrorModel.message}',
                      style: Styles.font16Gray400Weight,
                      textAlign: TextAlign.center,
                    ),
                    verticalSpace(height: 16.h),
                    ElevatedButton(
                      onPressed: () {
                        context.read<TopDoctorsCubit>().getAllDoctorsComplete();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorManager.primaryBlue,
                        foregroundColor: ColorManager.white,
                      ),
                      child: Text('Retry'),
                    ),
                  ],
                ),
              ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildDoctorsGrid(List<TopDoctorsModel> doctors) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child:
          doctors.isEmpty
              ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.medical_services_outlined,
                      size: 64.sp,
                      color: ColorManager.lightGray,
                    ),
                    verticalSpace(height: 16.h),
                    Text('No doctors found', style: Styles.font16Gray400Weight),
                  ],
                ),
              )
              : GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.w,
                  mainAxisSpacing: 16.h,
                  childAspectRatio: 0.75,
                ),
                itemCount: doctors.length,
                itemBuilder: (context, index) {
                  final doctor = doctors[index];
                  return DoctorCard(
                    doctorId: doctor.id,
                    name: doctor.fullName,
                    specialty: doctor.specialty ?? 'Dermatologist',
                    rating: doctor.ratingsAverage ?? 0.0,
                    distance: '${doctor.experience ?? 0} years exp',
                    image: doctor.image ?? 'assets/images/doctorMale.jpg',
                  );
                },
              ),
    );
  }
}
