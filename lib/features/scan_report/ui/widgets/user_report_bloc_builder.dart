import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/Profile/data/models/user_profile_model.dart';
import 'package:skin_care_app/features/scan_report/data/models/scan_report_response.dart';
import 'package:skin_care_app/features/scan_report/logic/cubit/user_report_cubit.dart';
import 'package:skin_care_app/features/scan_report/logic/cubit/user_report_state.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/history_shimmer.dart';
import 'package:skin_care_app/features/scan_report/ui/widgets/report_history_section.dart';

class UserReportBlocBuilder extends StatelessWidget {
  const UserReportBlocBuilder({
    super.key,
    required this.report,
    required this.userData,
  });
  final ScanReportResponse report;
  final UserProfileData userData;
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
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) => const HistoryItemShimmer(),
            );
          },
          success:
              (reports) =>
                  ReportHistorySection(reports: reports, userData: userData),
          error: (error) => Center(child: Text('Error: ${error.message}')),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
