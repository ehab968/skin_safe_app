import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/Profile/logic/cubit/user_profile_cubit.dart';
import 'package:skin_care_app/features/Profile/logic/cubit/user_profile_state.dart';
import 'package:skin_care_app/features/reports/logic/scan_report_cubit/scan_report_cubit.dart';
import 'package:skin_care_app/features/reports/logic/scan_report_cubit/scan_report_state.dart';
import 'package:skin_care_app/features/reports/scan_report/ui/scan_report_view_body.dart';
import 'package:skin_care_app/features/reports/scan_report/ui/widgets/scan_report_shimmer.dart';

class ScanReportBlocBuilder extends StatelessWidget {
  const ScanReportBlocBuilder({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScanReportCubit, ScanReportState>(
      buildWhen:
          (previous, current) =>
              current is ScanReportLoading ||
              current is ScanReportSuccess ||
              current is ScanReportFailure,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const ScanReportShimmer(),
          success: (report) {
            return BlocBuilder<UserProfileCubit, UserProfileState>(
              buildWhen:
                  (previous, current) =>
                      current is UserProfileLoading ||
                      current is UserProfileSuccess ||
                      current is UserProfileError,
              builder: (context, userState) {
                return userState.maybeWhen(
                  loading: () => const SizedBox.shrink(),
                  success: (userProfileData) {
                    return ScanReportViewBody(
                      imagePath: imagePath,
                      report: report,
                      userData: userProfileData,
                    );
                  },
                  error:
                      (error) => Center(child: Text('Error: ${error.message}')),
                  orElse: () => const SizedBox.shrink(),
                );
              },
            );
          },
          failure: (error) => Center(child: Text('Error: ${error.message}')),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
