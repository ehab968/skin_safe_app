import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:skin_care_app/core/helper/constants.dart';
import 'package:skin_care_app/core/helper/shared_pref_helper.dart';
import 'package:skin_care_app/features/authentication/sign_up/data/models/signup_request.dart';
import 'package:skin_care_app/features/authentication/sign_up/data/repo/sign_up_repo.dart';
import 'package:skin_care_app/features/authentication/sign_up/logic/sign_up_cubit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final formKey = GlobalKey<FormBuilderState>();
  final formKey2 = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController skinToneController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  final SignUpRepo signUpRepo;
  SignUpCubit(this.signUpRepo) : super(const SignUpState.initial());
  String convertDate() {
    DateTime date = DateFormat('dd/MM/yyyy').parse(dateOfBirthController.text);
    String formattedDate = DateFormat('yyyy-MM-dd').format(date);
    return formattedDate;
  }

  Future<void> doSignUp() async {
    emit(const SignUpState.signUPLoading());
    final response = await signUpRepo.signUp(
      SignupRequest(
        name: nameController.text,
        userName: userNameController.text,
        email: emailController.text,
        dateOfBirth: convertDate(),
        skinTone: skinToneController.text,
        gender: genderController.text,
        password: passwordController.text,
        passwordConfirm: passwordConfirmController.text,
        phoneNumber: phoneNumberController.text,
      ),
    );
    response.when(
      success: (data) async {
        await saveSignUpToken(data.token ?? '');
        emit(SignUpState.signUPSuccess(data));
      },
      failure: (apiErrorModel) {
        emit(SignUpState.signUPError(apiErrorModel));
      },
    );
  }

  Future<void> saveSignUpToken(String token) async {
    await SharedPrefHelper.setData(SharedPrefKeys.signUpToken, token);
  }
}
