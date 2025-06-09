import 'package:flutter/material.dart';
import 'package:skin_care_app/core/theme/colors.dart';

void snackBarShow(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: ColorManager.primaryBlue,
      content: Text(message, style: const TextStyle(color: Colors.white)),
    ),
  );
}
