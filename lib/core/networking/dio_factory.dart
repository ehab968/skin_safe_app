import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:skin_care_app/core/helper/constants.dart';
import 'package:skin_care_app/core/helper/shared_pref_helper.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioInterceptor();
      addDioHeader();
      addTokenInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeader() {
    dio?.options.headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }

  static void addTokenInterceptor() {
    dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // Get token from shared preferences
          final token = await SharedPrefHelper.getString(
            SharedPrefKeys.userToken,
          );
          if (token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          handler.next(options);
        },
        onError: (error, handler) {
          // Handle token expiration or unauthorized errors
          if (error.response?.statusCode == 401) {
            // Token might be expired, you can handle logout here
            // For now, just pass the error
          }
          handler.next(error);
        },
      ),
    );
  }

  /// Method to update token when user logs in
  static void setToken(String token) async {
    await SharedPrefHelper.setData(SharedPrefKeys.userToken, token);
    // Update the authorization header for current dio instance
    if (dio != null) {
      dio!.options.headers['Authorization'] = 'Bearer $token';
    }
  }

  /// Method to clear token when user logs out
  static void clearToken() async {
    await SharedPrefHelper.removeData(SharedPrefKeys.userToken);
    // Remove the authorization header
    if (dio != null) {
      dio!.options.headers.remove('Authorization');
    }
  }
}
