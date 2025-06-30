import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/helper/constants.dart';
import 'package:skin_care_app/core/helper/shared_pref_helper.dart';
import 'package:skin_care_app/features/authentication/verfication_code/data/models/verfication_request.dart';
import 'package:skin_care_app/features/authentication/verfication_code/data/repo/verficatiion_repo.dart';
import 'package:skin_care_app/features/authentication/verfication_code/logic/cubit/verfication_state.dart';

class VerficationCubit extends Cubit<VerficationState> {
  final formKey = GlobalKey<FormState>();
  TextEditingController verficationCodeController = TextEditingController();
  final VerficatiionRepo verficatiionRepo;
  VerficationCubit(this.verficatiionRepo)
    : super(const VerficationState.initial());
  Future<void> doVerfication() async {
    final signUpToken = await SharedPrefHelper.getString(
      SharedPrefKeys.signUpToken,
    );
    emit(const VerficationState.verficationLoading());
    final request = VerficationRequest(
      code: verficationCodeController.text.trim(),
    );

    debugPrint("🔍 Verification Request: ${request.toJson()}");
    final response = await verficatiionRepo.verficationCode(
      VerficationRequest(code: verficationCodeController.text),
      'Bearer $signUpToken',
    );
    response.when(
      success: (data) async {
        await saveUserToken(data.token ?? '');
        emit(VerficationState.verficationSuccess(data));
      },
      failure: (apiErrorModel) {
        emit(VerficationState.verficationError(apiErrorModel));
        debugPrint(verficationCodeController.text);
      },
    );
  }
}

Future<void> saveUserToken(String token) async {
  await SharedPrefHelper.setData(SharedPrefKeys.userToken, token);
}
