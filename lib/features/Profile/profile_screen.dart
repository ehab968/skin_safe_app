import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/di/dependancy_injection.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/features/Profile/logic/cubit/user_profile_cubit.dart';
import 'package:skin_care_app/features/Profile/ui/widgets/profile_settings.dart';
import 'package:skin_care_app/features/Profile/ui/widgets/user_profile_bloc_builder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserProfileCubit>()..getUserProfile(),
      child: Scaffold(
        bottomNavigationBar: AppBottomNavigationBar(
          currentIndex: 4,
          onTap: (index) {
            index == 4 ? null : navigateToTab(context, index);
          },
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: SizedBox(
              height: 3000,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const UserProfileBlocBuilder(),
                  Text('My account', style: Styles.font16Black700Weight),
                  Expanded(child: ProfileSettings()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
