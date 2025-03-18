import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/features/scan/logic/camera_cubit/camera_cubit.dart';

class CameraButton extends StatelessWidget {
  const CameraButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75.h,
      width: 75.w,
      child: FloatingActionButton(
        elevation: 0,
        highlightElevation: 0,
        onPressed: () {
          context.read<CameraCubit>().captureImage();
        },
        backgroundColor: Colors.transparent,
        child: Image.asset('assets/images/capture photo button.png'),
      ),
    );
  }
}
