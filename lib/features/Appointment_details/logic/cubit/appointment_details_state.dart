import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';

part 'appointment_details_state.freezed.dart';

@freezed
class AppointmentDetailsState<T> with _$AppointmentDetailsState<T> {
  const factory AppointmentDetailsState.initial() = _Initial;
  const factory AppointmentDetailsState.loading() = AppointmentDetailsLoading;
  const factory AppointmentDetailsState.loaded(T data) =
      AppointmentDetailsLoaded<T>;
  const factory AppointmentDetailsState.error(ApiErrorModel apiErrorModel) =
      AppointmentDetailsError;
}
