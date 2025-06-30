import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/helper/snackbar.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/features/authentication/sign_up/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:skin_care_app/features/authentication/sign_up/logic/sign_up_cubit/sign_up_state.dart';
import 'package:skin_care_app/features/authentication/widgets/error_alert_dialog.dart';

class SignUpBlocListner extends StatelessWidget {
  const SignUpBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen:
          (previous, current) =>
              current is signUpLoading ||
              current is SignUpError ||
              current is SignUpSuccess,
      listener: (context, state) {
        state.whenOrNull(
          signUPLoading:
              () => dataLoading(context),
          signUPSuccess: (data) {
            context.pop();
            snackBarShow(context, 'Sign up successfully, Welcome');
            context.pushNamed(Routes.verficationCodeView, arguments: data);
          },
          signUPError: (apiErrorModel) {
            context.pop();
            setUpSignUpErrorState(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setUpSignUpErrorState(
    BuildContext context,
    ApiErrorModel apiErrorModel,
  ) {
    showDialog(
      context: context,
      builder: (_) => ErrorAlertDialog(errorMessage: apiErrorModel.message!),
    );
  }
}
