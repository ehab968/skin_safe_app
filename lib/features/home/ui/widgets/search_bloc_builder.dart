import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/di/dependancy_injection.dart';
import 'package:skin_care_app/features/home/logic/cubit/search_cubit.dart';
import 'package:skin_care_app/features/home/logic/cubit/search_state.dart';
import 'package:skin_care_app/features/home/logic/cubit/recent_search_cubit.dart';
import 'package:skin_care_app/features/home/ui/widgets/search_results_widget.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBlocBuilder extends StatelessWidget {
  const SearchBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading:
              () => const Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: CircularProgressIndicator(),
                ),
              ),
          searchSuccess:
              (doctors) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Search Results (${doctors.length})',
                    style: Styles.font18Black600Weight,
                  ),
                  verticalSpace(height: 16.h),
                  SearchResultsWidget(
                    doctors: doctors,
                    onDoctorTap: (doctor) {
                      // Save to recent searches when clicking on search results
                      context.read<SearchCubit>().saveToRecentSearch(doctor);
                      // Also update global recent search state
                      getIt<RecentSearchCubit>().saveToRecentSearch(doctor);
                      // Navigate to doctor details or close search
                      Navigator.pop(context);
                      // You can add specific navigation to doctor details here
                      // context.pushNamed(Routes.doctorDetails, arguments: doctor);
                    },
                    isRecentSearch: false,
                  ),
                ],
              ),
          recentSearchSuccess:
              (recentDoctors) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent Searches',
                        style: Styles.font18Black600Weight,
                      ),
                      if (recentDoctors.isNotEmpty)
                        TextButton(
                          onPressed: () {
                            context.read<SearchCubit>().clearRecentSearches();
                          },
                          child: Text(
                            'Clear All',
                            style: Styles.font14PrimaryBlue500Weight,
                          ),
                        ),
                    ],
                  ),
                  verticalSpace(height: 16.h),
                  SearchResultsWidget(
                    doctors: recentDoctors,
                    onDoctorTap: (doctor) {
                      // For recent searches, just navigate without re-saving
                      // (but update the timestamp by saving again)
                      context.read<SearchCubit>().saveToRecentSearch(doctor);
                      // Also update global recent search state
                      getIt<RecentSearchCubit>().saveToRecentSearch(doctor);
                      Navigator.pop(context);
                      // You can add specific navigation to doctor details here
                      // context.pushNamed(Routes.doctorDetails, arguments: doctor);
                    },
                    isRecentSearch: true,
                  ),
                ],
              ),
          error:
              (error) => Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.error_outline, size: 48, color: Colors.red),
                      verticalSpace(height: 16.h),
                      Text(
                        error,
                        style: Styles.font16PrimaryBlue500Weight,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
          orElse: () => const SizedBox(height: 20),
        );
      },
    );
  }
}
