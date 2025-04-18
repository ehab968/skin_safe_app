import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/features/scan/logic/camera_cubit/camera_cubit.dart';

class FlipCameraButton extends StatelessWidget {
  const FlipCameraButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<CameraCubit>().switchCamera();
      },
      icon: Icon(
        Icons.flip_camera_android,
        size: 32.r,
        color: ColorManager.white,
      ),
    );
  }
}
