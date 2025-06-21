import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/helper/constants.dart';
import 'package:skin_care_app/core/helper/shared_pref_helper.dart';
import 'package:skin_care_app/features/authentication/confirmation_code/data/models/confirmation_code_model.dart';
import 'package:skin_care_app/features/authentication/confirmation_code/data/repo/confirmation_code_repo.dart';
import 'package:skin_care_app/features/authentication/confirmation_code/logic/cubit/confirmation_code_state.dart';

class ConfirmationCodeCubit extends Cubit<ConfirmationCodeState> {
  ConfirmationCodeCubit(this.confirmationCodeRepo)
    : super(const ConfirmationCodeState.initial());
  final ConfirmationCodeRepo confirmationCodeRepo;
  TextEditingController confirmationCodeController = TextEditingController();
  Future<void> verifyResetPassword() async {
    emit(const ConfirmationCodeState.loading());
    final validtoken = await SharedPrefHelper.getString(
      SharedPrefKeys.forgetPasswordToken,
    );
    final response = await confirmationCodeRepo.verifyResetPassword(
      ConfirmationCodeRequest(resetCode: confirmationCodeController.text),
      'Bearer $validtoken',
    );
    response.when(
      success: (data) async {
        emit(ConfirmationCodeState.success(data));
        await saveForgetPasswordToken(data.token ?? '');
      },
      failure: (apiErrorModel) {
        emit(ConfirmationCodeState.error(apiErrorModel));
      },
    );
  }

  Future<void> saveForgetPasswordToken(String token) async {
    await SharedPrefHelper.setData(SharedPrefKeys.forgetPasswordToken, token);
  }
}
