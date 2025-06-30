import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:skin_care_app/core/networking/api_constants.dart';
import 'package:skin_care_app/features/Articles/data/models/article_model.dart';
import 'package:skin_care_app/features/authentication/confirmation_code/data/models/confirmation_code_model.dart';
import 'package:skin_care_app/features/authentication/forget_password/data/models/forget_password_model.dart';
import 'package:skin_care_app/features/authentication/login/data/models/login_request.dart';
import 'package:skin_care_app/features/authentication/login/data/models/login_response.dart';
import 'package:skin_care_app/features/authentication/reset_password/data/models/reset_password_model.dart';
import 'package:skin_care_app/features/authentication/sign_up/data/models/signup_request.dart';
import 'package:skin_care_app/features/authentication/sign_up/data/models/signup_response.dart';
import 'package:skin_care_app/features/authentication/verfication_code/data/models/verfication_response.dart';
import 'package:skin_care_app/features/home/data/models/top_doctors_model.dart';
import 'package:skin_care_app/features/Profile/data/models/user_profile_model.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  // sign up
  @POST(ApiConstants.signUp)
  Future<SignupResponse> signUp(@Body() SignupRequest signupRequest);
  // sign up verification
  @POST(ApiConstants.signUpVerfication)
  Future<VerficationResponse> verficationCode(
    @Body() dynamic verficationCodeRequest,
    @Header('Authorization') String token,
  );
  // login
  @POST(ApiConstants.login)
  Future<LoginResponse> logIn(@Body() LoginRequest loginRequest);
  // forget password
  @POST(ApiConstants.forgetPassword)
  Future<ForgetPasswordResponse> forgetPassword(
    @Body() ForgetPasswordRequest forgetPasswordRequest,
  );
  // forget confirmation code
  @POST(ApiConstants.verifyResetPassword)
  Future<ConfirmationCodeResponse> verifyResetPassword(
    @Body() ConfirmationCodeRequest confirmationCodeRequest,
    @Header('Authorization') String token,
  );
  // reset password
  @POST(ApiConstants.resetPassword)
  Future<ResetPasswordResponse> resetPassword(
    @Body() ResetPasswordRequest resetPasswordRequest,
    @Header('Authorization') String token,
  );

  // articles
  @GET(ApiConstants.articles)
  Future<List<ArticleModel>> getAllArticles();

  // doctors
  @GET(ApiConstants.doctors)
  Future<DoctorsResponse> getAllDoctors();

  // user profile
  @GET('${ApiConstants.userProfile}/{userId}')
  Future<UserProfileResponse> getUserProfile(
    @Path('userId') String userId,
    @Header('Authorization') String token,
  );
}
