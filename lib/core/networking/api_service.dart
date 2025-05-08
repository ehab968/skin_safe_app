import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:skin_care_app/core/networking/api_constants.dart';
import 'package:skin_care_app/features/authentication/sign_up/data/models/signup_request.dart';
import 'package:skin_care_app/features/authentication/sign_up/data/models/signup_response.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.signUp)
  Future<SignupResponse> signUp(@Body() SignupRequest signupRequest);
}
