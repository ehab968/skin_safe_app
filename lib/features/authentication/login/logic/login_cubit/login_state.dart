import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loginLoading() = LoginLoading;
  const factory LoginState.loginSuccess(T data) = LoginSuccess<T>;
  const factory LoginState.loginError(ApiErrorModel apiErrorModel) = LoginError;
  // const factory LoginState.loginWithGoogleSuccess(
  //   UserCredential userCredential,
  // ) = LoginWithGoogleSuccess;
  // const factory LoginState.loginWithGoogleError(String error) = LoginWithGoogleError;
}
