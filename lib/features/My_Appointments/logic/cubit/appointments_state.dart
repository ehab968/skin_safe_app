import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';

part 'appointments_state.freezed.dart';

@freezed
class AppointmentsState<T> with _$AppointmentsState<T> {
  const factory AppointmentsState.initial() = _Initial;
  const factory AppointmentsState.loading() = AppointmentsLoading;
  const factory AppointmentsState.success(T data) = AppointmentsSuccess<T>;
  const factory AppointmentsState.error(ApiErrorModel apiErrorModel) =
      AppointmentsError;
}
