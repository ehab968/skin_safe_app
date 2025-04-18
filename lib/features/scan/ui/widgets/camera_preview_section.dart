import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/scan/logic/camera_cubit/camera_cubit.dart';
import 'package:skin_care_app/features/scan/ui/widgets/camera_button.dart';
import 'package:skin_care_app/features/scan/ui/widgets/camera_overlay.dart';
import 'package:skin_care_app/features/scan/ui/widgets/flash_button.dart';
import 'package:skin_care_app/features/scan/ui/widgets/flip_camera_button.dart';
import 'package:skin_care_app/features/scan/ui/widgets/gallery_button.dart';
import 'package:skin_care_app/features/scan/ui/widgets/image_bloc_listner.dart';
import 'package:skin_care_app/features/scan/ui/widgets/zoom_slider.dart';

class CameraPreviewSection extends StatelessWidget {
  const CameraPreviewSection({super.key, required this.cameraController});
  final CameraController cameraController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform(
          alignment: Alignment.center,
          transform:
              Matrix4.identity()..scale(
                context.read<CameraCubit>().selectedCameraIndex == 1
                    ? -1.0
                    : 1.0,
                1.0,
                1.0,
              ),
          child: CameraOverlay(cameraPreview: CameraPreview(cameraController)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 55.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              verticalSpace(height: 85),
              const FlashButton(),
              const Spacer(),
              const ZoomSlider(),
              verticalSpace(height: 40),
              const Row(
                children: [
                  ImageBlocListener(),
                  GalleryButton(),
                  Spacer(),
                  CameraButton(),
                  Spacer(),
                  FlipCameraButton(),
                ],
              ),
              verticalSpace(height: 28),
            ],
          ),
        ),
      ],
    );
  }
}
