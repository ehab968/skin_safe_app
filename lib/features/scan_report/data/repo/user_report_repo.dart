import 'package:skin_care_app/core/helper/constants.dart';
import 'package:skin_care_app/core/helper/shared_pref_helper.dart';
import 'package:skin_care_app/core/networking/api_error_handler.dart';
import 'package:skin_care_app/core/networking/api_result.dart';
import 'package:skin_care_app/core/networking/api_service.dart';
import 'package:skin_care_app/features/scan_report/data/models/user_report_response.dart';

class UserReportRepo {
  final ApiService apiService;

  UserReportRepo(this.apiService);

  Future<ApiResult<List<UserReportResponse>>> getUserReports() async {
    try {
      final userId = await SharedPrefHelper.getString(SharedPrefKeys.userId);
      final response = await apiService.getReports(userId);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
