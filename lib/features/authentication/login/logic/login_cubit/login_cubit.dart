import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/authentication/login/logic/login_cubit/login_state.dart';


class LoginCubit extends Cubit<LoginState> {

  final formKey = GlobalKey<FormState>();


  LoginCubit() : super(const LoginState.initial());
}
