import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/helper/constants.dart';
import 'package:skin_care_app/core/helper/shared_pref_helper.dart';
import 'package:skin_care_app/features/authentication/forget_password/data/models/forget_password_model.dart';
import 'package:skin_care_app/features/authentication/forget_password/data/repo/forget_password_repo.dart';
import 'package:skin_care_app/features/authentication/forget_password/logic/cubit/forget_password_state.dart';

class ForgetPasswordCubit
    extends Cubit<ForgetPasswordState<ForgetPasswordResponse>> {
  ForgetPasswordCubit(this.forgetPasswordRepo)
    : super(const ForgetPasswordState.initial());
  final ForgetPasswordRepo forgetPasswordRepo;
  TextEditingController emailController = TextEditingController();
  Future<void> sendPasswordRecoveryEmail() async {
    emit(const ForgetPasswordState.forgetPasswordLoading());
    final response = await forgetPasswordRepo.forgetPassword(
      ForgetPasswordRequest(email: emailController.text),
    );
    response.when(
      success: (data)async {
        emit(ForgetPasswordState.forgetPasswordSuccess(data));
        await saveForgetPasswordToken(data.token ?? '');
      },
      failure: (apiErrorModel) {
        emit(ForgetPasswordState.forgetPasswordError(apiErrorModel));
      },
    );
  }

  Future<void> saveForgetPasswordToken(String token) async {
    await SharedPrefHelper.setData(SharedPrefKeys.forgetPasswordToken, token);
  }
}
