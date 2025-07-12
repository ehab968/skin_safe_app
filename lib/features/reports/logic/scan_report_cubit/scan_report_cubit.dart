import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/reports/data/models/scan_report_request.dart';
import 'package:skin_care_app/features/reports/data/repo/scan_report_repo.dart';
import 'package:skin_care_app/features/reports/logic/scan_report_cubit/scan_report_state.dart';

class ScanReportCubit extends Cubit<ScanReportState> {
  ScanReportCubit(this.scanReportRepo) : super(const ScanReportState.initial());
  final ScanReportRepo scanReportRepo;
  Future<void> createScanReport(String imagePath) async {
    emit(const ScanReportState.loading());
    final response = await scanReportRepo.createScanReport(
      ScanReportRequest(imagePath: imagePath),
    );
    response.when(
      success: (data) {
        emit(ScanReportState.success(data));
      },
      failure: (apiErrorModel) {
        emit(ScanReportState.failure(apiErrorModel));
      },
    );
  }
}
