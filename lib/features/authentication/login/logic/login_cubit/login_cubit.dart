import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/helper/constants.dart';
import 'package:skin_care_app/core/helper/shared_pref_helper.dart';
import 'package:skin_care_app/features/authentication/login/data/models/login_request.dart';
import 'package:skin_care_app/features/authentication/login/data/models/login_response.dart';
import 'package:skin_care_app/features/authentication/login/data/repo/login_repo.dart';
import 'package:skin_care_app/features/authentication/login/logic/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState<LoginResponse>> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginCubit(this.loginRepo) : super(const LoginState.initial());
  final LoginRepo loginRepo;
  Future<void> doLogin() async {
    emit(const LoginState.loginLoading());
    final response = await loginRepo.logIn(
      LoginRequest(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (data) async {
        await saveLoginToken(data.token ?? '', data.data?.id ?? '');
        emit(LoginState.loginSuccess(data));
      },
      failure: (apiErrorModel) {
        emit(LoginState.loginError(apiErrorModel));
      },
    );
  }

  Future<void> saveLoginToken(String token, String userId) async {
    await SharedPrefHelper.setData(SharedPrefKeys.userToken, token);
    await SharedPrefHelper.setData(SharedPrefKeys.userId, userId);
  }
}
  // final _firebaseAuth = FirebaseAuth.instance;
  // Future<void> loginWithGoogle() async {
  //   emit(const LoginState.loginLoading());
  //   try {
  //     final googleUser = await GoogleSignIn().signIn();
  //     final googleAuth = await googleUser?.authentication;
  //     final credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth?.accessToken,
  //       idToken: googleAuth?.idToken,
  //     );
  //     final userCredential = await _firebaseAuth.signInWithCredential(credential);
  //     emit(LoginState.loginWithGoogleSuccess(userCredential));
  //   } catch (e) {
  //     emit(LoginState.loginWithGoogleError(e.toString()));