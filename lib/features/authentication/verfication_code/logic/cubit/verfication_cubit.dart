import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/authentication/verfication_code/logic/cubit/verfication_state.dart';


class VerficationCubit extends Cubit<VerficationState> {
  final formKey = GlobalKey<FormState>();
  VerficationCubit() : super(const VerficationState.initial());
}
