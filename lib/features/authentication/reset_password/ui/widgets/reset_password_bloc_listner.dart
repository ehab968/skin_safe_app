import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/helper/snackbar.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/features/authentication/reset_password/logic/cubit/reset_password_cubit.dart';
import 'package:skin_care_app/features/authentication/reset_password/logic/cubit/reset_password_state.dart';

class ResetPasswordBlocListner extends StatelessWidget {
  const ResetPasswordBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordCubit, ResetPasswordState>(
      listenWhen:
          (previous, current) =>
              current is ResetPasswordLoading ||
              current is ResetPasswordSuccess ||
              current is ResetPasswordError,
      listener: (context, state) {
        state.whenOrNull(
          resetPasswordLoading: () => dataLoading(context),
          resetPasswordSuccess: (data) {
            context.pop();
            context.pushNamedAndRemoveUntil(
              Routes.loginView,
              predicate: (route) => false,
            );
            snackBarShow(
              context,
              'Password reset successful, you can now log in with your new password',
            );
          },
          resetPasswordError: (apiErrorModel) {
            context.pop();
            setUpErrorState(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
