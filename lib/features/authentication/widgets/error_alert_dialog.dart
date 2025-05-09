import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class ErrorAlertDialog extends StatelessWidget {
  const ErrorAlertDialog({super.key, required this.errorMessage});

  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
        content: Text(errorMessage, style: Styles.font16Black400Weight),
        contentPadding: EdgeInsets.only(top: 30.h, left: 24.w, right: 24.w),
        actionsPadding: EdgeInsets.only(top: 16.h, right: 16.w, bottom: 8.h),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text('OK', style: Styles.font16PrimaryBlue500Weight),
          ),
        ],
      ),
    );
  }
}
