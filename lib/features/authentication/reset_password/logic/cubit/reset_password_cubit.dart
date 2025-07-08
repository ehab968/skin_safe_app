import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/authentication/reset_password/data/models/reset_password_model.dart';
import 'package:skin_care_app/features/authentication/reset_password/data/repo/reset_password_repo.dart';
import 'package:skin_care_app/features/authentication/reset_password/logic/cubit/reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(this.resetPasswordRepo)
    : super(const ResetPasswordState.initial());
  final ResetPasswordRepo resetPasswordRepo;
  TextEditingController emailController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  Future<void> resetPassword() async {
    emit(const ResetPasswordState.resetPasswordLoading());
    final response = await resetPasswordRepo.resetPassword(
      ResetPasswordRequest(
        email: emailController.text,
        newPassword: newPasswordController.text,
        passwordConfirm: confirmPasswordController.text,
      ),
    );
    response.when(
      success: (data) {
        emit(ResetPasswordState.resetPasswordSuccess(data));
      },
      failure: (apiErrorModel) {
        emit(ResetPasswordState.resetPasswordError(apiErrorModel));
      },
    );
  }
  
}
