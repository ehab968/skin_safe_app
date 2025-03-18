import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/features/scan/logic/camera_cubit/camera_cubit.dart';

class FlashButton extends StatelessWidget {
  const FlashButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: context.read<CameraCubit>().isFlashOn,
      builder: (context, isFlashOn, child) {
        return IconButton(
          icon: Icon(
            isFlashOn ? Icons.flash_on : Icons.flash_off,
            size: 32.r,
            color: ColorManager.white,
          ),
          onPressed: () {
            context.read<CameraCubit>().toggleFlash();
          },
        );
      },
    );
  }
}
