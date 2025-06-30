import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/Profile/data/models/user_profile_model.dart';
import 'package:skin_care_app/features/Profile/logic/cubit/user_profile_cubit.dart';
import 'package:skin_care_app/features/Profile/logic/cubit/user_profile_state.dart';
import 'package:skin_care_app/features/Profile/ui/widgets/profile_content.dart';
import 'package:skin_care_app/features/Profile/ui/widgets/profile_shimmer_loading.dart';

class UserProfileBlocBuilder extends StatelessWidget {
  const UserProfileBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserProfileCubit, UserProfileState>(
      buildWhen:
          (previous, current) =>
              current is UserProfileLoading ||
              current is UserProfileSuccess ||
              current is UserProfileError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (userProfile) {
            return setupSuccess(userProfile);
          },
          error: (apiErrorModel) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Error: ${apiErrorModel.message}',
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      context.read<UserProfileCubit>().getUserProfile();
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupSuccess(UserProfileData userProfile) {
    return ProfileContent(userProfile: userProfile);
  }

  Widget setupLoading() => const ProfileShimmerLoading();
}
