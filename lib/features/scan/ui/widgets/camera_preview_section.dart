import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/features/scan/logic/camera_cubit/camera_cubit.dart';
import 'package:skin_care_app/features/scan/logic/camera_cubit/camera_state.dart';

class CameraPreviewSection extends StatelessWidget {
  const CameraPreviewSection({super.key, required this.cameraController});
  final CameraController cameraController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          child: CameraPreview(cameraController),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Center(
              child: SizedBox(
                height: 75.h,
                width: 75.w,
                child: BlocListener<CameraCubit, CameraState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      imageCaptured: (imagePath) {
                        Navigator.pushNamed(
                          context,
                          Routes.scanReportView,
                          arguments: imagePath,
                        );
                      },
                      orElse: () {},
                    );
                  },
                  child: FloatingActionButton(
                    elevation: 0,
                    highlightElevation: 0,
                    onPressed: () {
                      context.read<CameraCubit>().captureImage();
                    },
                    backgroundColor: Colors.transparent,
                    child: Image.asset(
                      'assets/images/capture photo button.png',
                    ),
                  ),
                ),
              ),
            ),
            verticalSpace(height: 28),
          ],
        ),
      ],
    );
  }
}
