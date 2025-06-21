import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/helper/snackbar.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/features/authentication/forget_password/data/models/forget_password_model.dart';
import 'package:skin_care_app/features/authentication/forget_password/logic/cubit/forget_password_cubit.dart';
import 'package:skin_care_app/features/authentication/forget_password/logic/cubit/forget_password_state.dart';

class ForgetPasswordBloclistner extends StatelessWidget {
  const ForgetPasswordBloclistner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<
      ForgetPasswordCubit,
      ForgetPasswordState<ForgetPasswordResponse>
    >(
      listenWhen:
          (previous, current) =>
              current is ForgetPasswordLoading ||
              current is ForgetPasswordError ||
              current is ForgetPasswordSuccess,
      listener: (context, state) {
        state.whenOrNull(
          forgetPasswordLoading:
              () => showDialog(
                context: context,
                builder:
                    (context) => const Center(
                      child: CircularProgressIndicator(
                        color: ColorManager.primaryBlue,
                      ),
                    ),
              ),
          forgetPasswordSuccess: (data) {
            context.pop();
            snackBarShow(
              context,
              data.message ?? 'Password recovery email sent successfully',
            );
            context.pushReplacementNamed(Routes.confirmationCodeView);
          },
          forgetPasswordError: (apiErrorModel) {
            context.pop();
            setUpErrorState(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
