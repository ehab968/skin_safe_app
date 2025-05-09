import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/snackbar.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/features/authentication/login/logic/login_cubit/login_cubit.dart';
import 'package:skin_care_app/features/authentication/login/logic/login_cubit/login_state.dart';
import 'package:skin_care_app/features/authentication/widgets/error_alert_dialog.dart';

class GoogleLoginBloclistner extends StatelessWidget {
  const GoogleLoginBloclistner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen:
          (previous, current) =>
              current is LoginLoading ||
              current is LoginWithGoogleError ||
              current is LoginWithGoogleSuccess,
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
          loginWithGoogleSuccess: (data) {
            context.pop();
            snackBarShow(context, 'login with google successfully, Welcome');
            context.pushNamedAndRemoveUntil(
              Routes.homeView,
              arguments: data,
              predicate: (route) => false,
            );
          },
          loginWithGoogleError: (message) {
            context.pop();
            setUpGoogleLoginErrorState(context, message);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setUpGoogleLoginErrorState(BuildContext context, String errorMessage) {
    showDialog(
      context: context,
      builder: (_) => ErrorAlertDialog(errorMessage: errorMessage),
    );
  }
}
