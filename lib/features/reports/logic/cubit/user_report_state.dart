import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';
import 'package:skin_care_app/features/reports/data/models/user_report_response.dart';
part 'user_report_state.freezed.dart';

@freezed
class UserReportState with _$UserReportState {
  const factory UserReportState.initial() = _Initial;
  const factory UserReportState.loading() = ReportLoading;
  const factory UserReportState.success(List<UserReportResponse> reports) = ReportSuccess;
  const factory UserReportState.error(ApiErrorModel apiErrorModel) = ReportError;
}
