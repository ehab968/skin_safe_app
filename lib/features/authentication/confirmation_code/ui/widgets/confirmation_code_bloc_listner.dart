import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/helper/snackbar.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/features/authentication/confirmation_code/logic/cubit/confirmation_code_cubit.dart';
import 'package:skin_care_app/features/authentication/confirmation_code/logic/cubit/confirmation_code_state.dart';

class ConfirmationCodeBlocListner extends StatelessWidget {
  const ConfirmationCodeBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConfirmationCodeCubit, ConfirmationCodeState>(
      listenWhen:
          (previous, current) =>
              current is ConfirmationCodeLoading ||
              current is ConfirmationCodeSuccess ||
              current is ConfirmationCodeError,
      listener: (context, state) {
        state.whenOrNull(
          loading: () => dataLoading(context),
          success: (data) {
            context.pop();
            context.pushReplacementNamed(Routes.resetPasswordView);
            snackBarShow(
              context,
              'Verification successful, Enter your new password',
            );
          },
          error: (apiErrorModel) {
            context.pop();
            setUpErrorState(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
