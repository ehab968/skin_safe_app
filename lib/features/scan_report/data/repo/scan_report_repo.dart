import 'package:skin_care_app/core/networking/api_constants.dart';
import 'package:skin_care_app/core/networking/api_error_handler.dart';
import 'package:skin_care_app/core/networking/api_result.dart';
import 'package:skin_care_app/core/networking/dio_factory.dart';
import 'package:skin_care_app/features/scan_report/data/models/scan_report_request.dart';
import 'package:skin_care_app/features/scan_report/data/models/scan_report_response.dart';

class ScanReportRepo {
  final dio = DioFactory.getDio();
  Future<ApiResult<ScanReportResponse>> createScanReport(
    ScanReportRequest scanReportRequest,
  ) async {
    try {
      final formData = await scanReportRequest.toFormData();
      final response = await dio.post(
        ApiConstants.createReport,
        data: formData,
      );
      return ApiResult.success(ScanReportResponse.fromJson(response.data));
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
