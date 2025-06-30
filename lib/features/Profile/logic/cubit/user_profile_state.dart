import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';
import 'package:skin_care_app/features/Profile/data/models/user_profile_model.dart';
part 'user_profile_state.freezed.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = _Initial;
  const factory UserProfileState.loading() = UserProfileLoading;
  const factory UserProfileState.success(UserProfileData userProfile) =
      UserProfileSuccess;
  const factory UserProfileState.error(ApiErrorModel apiErrorModel) =
      UserProfileError;
}
