import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';
import 'package:skin_care_app/features/reports/data/models/scan_report_response.dart';
part 'scan_report_state.freezed.dart';

@freezed
class ScanReportState with _$ScanReportState {
  const factory ScanReportState.initial() = _Initial;
  const factory ScanReportState.loading() = ScanReportLoading;
  const factory ScanReportState.success(ScanReportResponse scanReportResponse) =
      ScanReportSuccess;
  const factory ScanReportState.failure(ApiErrorModel apiErrorModel) =
      ScanReportFailure;
}
