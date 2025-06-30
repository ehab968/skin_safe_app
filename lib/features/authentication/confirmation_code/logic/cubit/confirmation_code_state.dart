import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';
part 'confirmation_code_state.freezed.dart';

@freezed
class ConfirmationCodeState<T> with _$ConfirmationCodeState<T> {
  const factory ConfirmationCodeState.initial() = _Initial;
  const factory ConfirmationCodeState.loading() = ConfirmationCodeLoading;
  const factory ConfirmationCodeState.success(T data) = ConfirmationCodeSuccess<T>;
  const factory ConfirmationCodeState.error(ApiErrorModel apiErrorModel) =
      ConfirmationCodeError;
}
