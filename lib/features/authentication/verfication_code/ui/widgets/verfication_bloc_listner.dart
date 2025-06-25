import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/features/authentication/verfication_code/logic/cubit/verfication_cubit.dart';
import 'package:skin_care_app/features/authentication/verfication_code/logic/cubit/verfication_state.dart';
import 'package:skin_care_app/features/authentication/widgets/error_alert_dialog.dart';

class VerficationBlocListner extends StatelessWidget {
  const VerficationBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerficationCubit, VerficationState>(
      listenWhen:
          (previous, current) =>
              current is VerficationLoading ||
              current is VerficationError ||
              current is VerficationSuccess,
      listener: (context, state) {
        state.whenOrNull(
          verficationLoading: () => dataLoading(context),
          verficationSuccess: (data) {
            context.pop();
            context.pushNamedAndRemoveUntil(
              Routes.homeView,
              predicate: (route) => false,
            );
          },
          verficationError: (apiErrorModel) {
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
      builder: (_) => ErrorAlertDialog(errorMessage: apiErrorModel.message!),
    );
  }
}
