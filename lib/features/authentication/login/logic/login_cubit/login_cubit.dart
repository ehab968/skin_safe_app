import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:skin_care_app/features/authentication/login/logic/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final formKey = GlobalKey<FormState>();

  LoginCubit() : super(const LoginState.initial());
  final _firebaseAuth = FirebaseAuth.instance;
  Future<void> loginWithGoogle() async {
    emit(const LoginState.loginLoading());
    try {
      final googleUser = await GoogleSignIn().signIn();
      final googleAuth = await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      final userCredential = await _firebaseAuth.signInWithCredential(credential);
      emit(LoginState.loginWithGoogleSuccess(userCredential));
    } catch (e) {
      emit(LoginState.loginWithGoogleError(e.toString()));
    }
  }
}
