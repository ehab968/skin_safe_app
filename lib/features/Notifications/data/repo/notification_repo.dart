import 'package:skin_care_app/core/networking/api_error_handler.dart';
import 'package:skin_care_app/core/networking/api_result.dart';
import 'package:skin_care_app/core/networking/api_service.dart';
import 'package:skin_care_app/features/Notifications/data/models/notification_response.dart';

class NotificationRepo {
  final ApiService _apiService;

  NotificationRepo(this._apiService);

  Future<ApiResult<List<NotificationItemModel>>> getNotifications() async {
    try {
      final response = await _apiService.getNotifications();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
} 