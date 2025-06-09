import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';
part 'verfication_state.freezed.dart';

@freezed
class VerficationState<T> with _$VerficationState<T> {
  const factory VerficationState.initial() = _Initial;
  const factory VerficationState.verficationLoading() = VerficationLoading;
  const factory VerficationState.verficationSuccess(T data) =
      VerficationSuccess<T>;
  const factory VerficationState.verficationError(ApiErrorModel apiErrorModel) =
      VerficationError;
}
