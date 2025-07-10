import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';

part 'notification_state.freezed.dart';

@freezed
class NotificationState<T> with _$NotificationState<T> {
  const factory NotificationState.initial() = _Initial;
  const factory NotificationState.loading() = NotificationLoading;
  const factory NotificationState.success(T data) = NotificationSuccess<T>;
  const factory NotificationState.error(ApiErrorModel apiErrorModel) =
      NotificationError;
} 