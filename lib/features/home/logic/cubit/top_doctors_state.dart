import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';
import 'package:skin_care_app/features/home/data/models/top_doctors_model.dart';
part 'top_doctors_state.freezed.dart';

@freezed
class TopDoctorsState with _$TopDoctorsState {
  const factory TopDoctorsState.initial() = _Initial;
  const factory TopDoctorsState.loading() = TopDoctorsLoading;
  const factory TopDoctorsState.success(List<TopDoctorsModel> doctors) =
      TopDoctorsSuccess;
  const factory TopDoctorsState.error(ApiErrorModel apiErrorModel) =
      TopDoctorsError;
}
