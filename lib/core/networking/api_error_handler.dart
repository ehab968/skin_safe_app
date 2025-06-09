import 'package:dio/dio.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: 'Connection Timeout');
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(message: 'Send Timeout');
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(message: 'Receive Timeout');
        case DioExceptionType.badCertificate:
          return ApiErrorModel(message: 'Bad Certificate');
        case DioExceptionType.badResponse:
          return _handleError(error);
        case DioExceptionType.cancel:
          return ApiErrorModel(message: 'Request Cancelled');
        case DioExceptionType.connectionError:
          return ApiErrorModel(message: 'Connection Error');
        default:
          return ApiErrorModel(message: 'Unknown Dio Excption Error');
      }
    } else {
      return ApiErrorModel(message: 'Unknown11 Error');
    }
  }
}

ApiErrorModel _handleError(DioException responseError) {
  if (responseError.response != null) {
    Map<String, dynamic> responseData = responseError.response?.data;
    if (responseData.containsKey('errors')) {
      List<Error> errors =
          (responseData['errors'] as List)
              .map((e) => Error.fromJson(e))
              .toList();
      return ApiErrorModel(message: errors[0].msg);
    } else if (responseData.containsKey('message')) {
      return ApiErrorModel(message: responseData['message']);
    } else {
      return ApiErrorModel(message: 'Unknown Error Formate');
    }
  } else {
    return ApiErrorModel(message: 'Unknown Error occured');
  }
}
