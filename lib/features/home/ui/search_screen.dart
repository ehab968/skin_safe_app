import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/di/dependancy_injection.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/home/logic/cubit/search_cubit.dart';
import 'package:skin_care_app/features/home/logic/cubit/top_doctors_cubit.dart';
import 'package:skin_care_app/features/home/logic/cubit/top_doctors_state.dart';
import 'package:skin_care_app/features/home/ui/widgets/search_bloc_builder.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<SearchCubit>()),
        BlocProvider(
          create:
              (context) => getIt<TopDoctorsCubit>()..getAllDoctorsComplete(),
        ),
      ],
      child: Scaffold(
        backgroundColor: ColorManager.white,
        appBar: AppBar(
          backgroundColor: ColorManager.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: ColorManager.black),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text('Search All Doctors', style: Styles.font18Black600Weight),
        ),
        body: BlocListener<TopDoctorsCubit, TopDoctorsState>(
          listener: (context, state) {
            state.maybeWhen(
              success: (doctors) {
                context.read<SearchCubit>().initializeWithDoctors(doctors);
              },
              orElse: () {},
            );
          },
          child: const SearchScreenBody(),
        ),
      ),
    );
  }
}

class SearchScreenBody extends StatefulWidget {
  const SearchScreenBody({super.key});

  @override
  State<SearchScreenBody> createState() => _SearchScreenBodyState();
}

class _SearchScreenBodyState extends State<SearchScreenBody> {
  @override
  Widget build(BuildContext context) {
    final searchCubit = context.read<SearchCubit>();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: Column(
        children: [
          // Search TextField
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: ColorManager.lighterGray,
              borderRadius: BorderRadius.circular(16),
            ),
            child: TextField(
              controller: searchCubit.searchController,
              onChanged: searchCubit.onSearchChanged,
              decoration: InputDecoration(
                hintText: "Search for doctors, specialists...",
                hintStyle: Styles.font14LightGray300Weight,
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search_sharp,
                  size: 24.sp,
                  color: ColorManager.lightGray,
                ),
                suffixIcon:
                    searchCubit.searchController.text.isNotEmpty
                        ? IconButton(
                          icon: Icon(
                            Icons.clear,
                            size: 20.sp,
                            color: ColorManager.lightGray,
                          ),
                          onPressed: searchCubit.clearSearch,
                        )
                        : null,
              ),
            ),
          ),

          verticalSpace(height: 24.h),

          // Search Results
          Expanded(
            child: SingleChildScrollView(child: const SearchBlocBuilder()),
          ),
        ],
      ),
    );
  }
}
