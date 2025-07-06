import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';

part 'appointment_state.freezed.dart';

@freezed
class AppointmentState<T> with _$AppointmentState<T> {
  const factory AppointmentState.initial() = _Initial;
  const factory AppointmentState.loading() = AppointmentLoading;
  const factory AppointmentState.success(T data) = AppointmentSuccess<T>;
  const factory AppointmentState.error(ApiErrorModel apiErrorModel) =
      AppointmentError;
}
