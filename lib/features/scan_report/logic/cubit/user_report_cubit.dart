import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/scan_report/data/repo/user_report_repo.dart';
import 'package:skin_care_app/features/scan_report/logic/cubit/user_report_state.dart';

class UserReportCubit extends Cubit<UserReportState> {
  UserReportCubit(this.userReportRepo) : super(const UserReportState.initial());
  final UserReportRepo userReportRepo;
  Future<void> getUserReports() async {
    emit(const UserReportState.loading());
    final response = await userReportRepo.getUserReports();

    if (isClosed) return;

    response.when(
      success: (reports) => emit(UserReportState.success(reports)),
      failure: (apiErrorModel) => emit(UserReportState.error(apiErrorModel)),
    );
  }
}
