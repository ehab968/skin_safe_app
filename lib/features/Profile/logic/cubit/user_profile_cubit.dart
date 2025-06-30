import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/Profile/data/repo/user_profile_repo.dart';
import 'package:skin_care_app/features/Profile/logic/cubit/user_profile_state.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  UserProfileCubit(this.userProfileRepo)
    : super(const UserProfileState.initial());
  final UserProfileRepo userProfileRepo;

  Future<void> getUserProfile() async {
    emit(const UserProfileState.loading());
    final response = await userProfileRepo.getUserProfile();

    if (isClosed) return;

    response.when(
      success: (userProfile) => emit(UserProfileState.success(userProfile)),
      failure: (apiErrorModel) => emit(UserProfileState.error(apiErrorModel)),
    );
  }
}
