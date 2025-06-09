import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:skin_care_app/core/networking/api_constants.dart';
import 'package:skin_care_app/features/authentication/login/data/models/login_request.dart';
import 'package:skin_care_app/features/authentication/login/data/models/login_response.dart';
import 'package:skin_care_app/features/authentication/sign_up/data/models/signup_request.dart';
import 'package:skin_care_app/features/authentication/sign_up/data/models/signup_response.dart';
import 'package:skin_care_app/features/authentication/verfication_code/data/models/verfication_response.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.signUp)
  Future<SignupResponse> signUp(@Body() SignupRequest signupRequest);
  @POST(ApiConstants.signUpVerfication)
  Future<VerficationResponse> verficationCode(
    @Body() verficationCodeRequest,
    @Header('Authorization') String token,
  );
  @POST(ApiConstants.login)
  Future<LoginResponse> logIn(@Body() LoginRequest loginRequest);
}
