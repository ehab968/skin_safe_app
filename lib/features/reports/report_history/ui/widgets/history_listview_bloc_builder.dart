import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/Profile/logic/cubit/user_profile_cubit.dart';
import 'package:skin_care_app/features/Profile/logic/cubit/user_profile_state.dart';
import 'package:skin_care_app/features/reports/logic/cubit/user_report_cubit.dart';
import 'package:skin_care_app/features/reports/logic/cubit/user_report_state.dart';
import 'package:skin_care_app/features/reports/scan_report/ui/widgets/history_report_shimmer.dart';
import 'package:skin_care_app/features/reports/scan_report/ui/widgets/report_history_list_view.dart';

class HistoryListviewBlocBuilder extends StatelessWidget {
  const HistoryListviewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserReportCubit, UserReportState>(
      buildWhen:
          (previous, current) =>
              current is ReportLoading ||
              current is ReportSuccess ||
              current is ReportError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 15,
              itemBuilder: (context, index) => const HistoryItemShimmer(),
            );
          },
          success: (reports) {
            if (reports.isEmpty) {
              return const Center(child: Text('No history reports found'));
            }
            return BlocBuilder<UserProfileCubit, UserProfileState>(
              buildWhen:
                  (previous, current) =>
                      current is UserProfileLoading ||
                      current is UserProfileSuccess ||
                      current is UserProfileError,
              builder: (context, state) {
                return state.maybeWhen(
                  success: (userProfileData) {
                    return ReportHistoryListView(
                      reports: reports,
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
          error: (error) => Center(child: Text('Error: ${error.message}')),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
