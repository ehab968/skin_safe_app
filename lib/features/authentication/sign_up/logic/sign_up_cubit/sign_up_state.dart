import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';
part 'sign_up_state.freezed.dart';

@freezed
class SignUpState<T> with _$SignUpState<T> {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.signUPLoading() = signUpLoading;
  const factory SignUpState.signUPSuccess(T data) = SignUpSuccess<T>;
  const factory SignUpState.signUPError(ApiErrorModel apiErrorModel) = SignUpError;
}
