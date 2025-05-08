import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/snackbar.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/features/authentication/sign_up/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:skin_care_app/features/authentication/sign_up/logic/sign_up_cubit/sign_up_state.dart';

class SignUpBlocListner extends StatelessWidget {
  const SignUpBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen:
          (previous, current) =>
              current is signUpLoading ||
              current is SignUpError ||
              current is signUpLoading,
      listener: (context, state) {
        state.whenOrNull(
          signUPLoading:
              () => showDialog(
                context: context,
                builder:
                    (context) =>
                        const Center(child: CircularProgressIndicator()),
              ),
          signUPSuccess: (data) {
            context.pop();
            snackBarShow(context, 'Sign up successfully, Welcome');
            context.pushNamed(Routes.signUpView2, arguments: data);
          },
          signUPError: (apiErrorModel) {
            context.pop();
            setUpErrorState(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setUpErrorState(BuildContext context, ApiErrorModel apiErrorModel) {
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            content: Text(apiErrorModel.message!),
            actions: [
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: const Text('OK'),
              ),
            ],
          ),
    );
  }
}
