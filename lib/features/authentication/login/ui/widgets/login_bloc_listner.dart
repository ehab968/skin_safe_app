import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/snackbar.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/features/authentication/login/data/models/login_response.dart';
import 'package:skin_care_app/features/authentication/login/logic/login_cubit/login_cubit.dart';
import 'package:skin_care_app/features/authentication/login/logic/login_cubit/login_state.dart';
import 'package:skin_care_app/features/authentication/widgets/error_alert_dialog.dart';

class LoginBlocListner extends StatelessWidget {
  const LoginBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState<LoginResponse>>(
      listenWhen:
          (previous, current) =>
              current is LoginLoading ||
              current is LoginError ||
              current is LoginSuccess,
      listener: (context, state) {
        state.whenOrNull(
          loginLoading:
              () => showDialog(
                context: context,
                builder:
                    (context) => const Center(
                      child: CircularProgressIndicator(
                        color: ColorManager.primaryBlue,
                      ),
                    ),
              ),
          loginSuccess: (data) {
            context.pop();
            snackBarShow(
              context,
              'Login successful, Welcome ${data.data!.name ?? ''} ',
            );
            context.pushNamedAndRemoveUntil(
              Routes.homeView,
              predicate: (route) => false,
              arguments: data,
            );
          },
          loginError: (apiErrorModel) {
            context.pop();
            setUpLoginErrorState(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setUpLoginErrorState(BuildContext context, ApiErrorModel apiErrorModel) {
    showDialog(
      context: context,
      builder: (_) => ErrorAlertDialog(errorMessage: apiErrorModel.message!),
    );
  }
}
