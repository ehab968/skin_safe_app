import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/networking/api_error_model.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/features/authentication/widgets/error_alert_dialog.dart';

void navigateToTab(BuildContext context, int index) {
  switch (index) {
    case 0:
      context.pushReplacementNamed(Routes.homeView);
      break;
    case 1:
      context.pushReplacementNamed(Routes.historyView);
      break;
    case 2:
      context.pushReplacementNamed(Routes.scanView);
      break;
    case 3:
      Navigator.pushReplacementNamed(context, Routes.ArticlesPage);
      null;
      break;
    case 4:
      context.pushReplacementNamed(Routes.profileView);
      break;
  }
}

void setUpErrorState(BuildContext context, ApiErrorModel apiErrorModel) {
  showDialog(
    context: context,
    builder:
        (context) => ErrorAlertDialog(errorMessage: apiErrorModel.message!),
  );
}
