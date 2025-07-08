import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/di/dependancy_injection.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/features/home/logic/cubit/top_doctors_cubit.dart';
import 'package:skin_care_app/features/home/logic/cubit/recent_search_cubit.dart';
import 'package:skin_care_app/features/home/ui/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<TopDoctorsCubit>()..getTopDoctors(),
        ),
        BlocProvider.value(value: getIt<RecentSearchCubit>()),
      ],
      child: Builder(
        builder: (context) {
          // Initialize recent searches after providers are available
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.read<RecentSearchCubit>().getRecentSearches();
          });

          return Scaffold(
            backgroundColor: ColorManager.white,
            bottomNavigationBar: AppBottomNavigationBar(
              currentIndex: 0,
              onTap: (index) {
                index == 0 ? null : navigateToTab(context, index);
              },
            ),
            body: const HomeViewBody(),
          );
        },
      ),
    );
  }
}
