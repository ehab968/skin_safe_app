import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/features/scan/logic/camera_cubit/camera_cubit.dart';
import 'package:skin_care_app/features/scan/logic/camera_cubit/camera_state.dart';
import 'package:skin_care_app/features/scan/ui/widgets/camera_preview_section.dart';

class ScanViewBody extends StatelessWidget {
  const ScanViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CameraCubit, CameraState>(
      builder: (context, state) {
        return state.maybeWhen(
          initial: () {
            return const Center(
              child: CircularProgressIndicator(color: ColorManager.primaryBlue),
            );
          },
          loaded: (cameras) {
            context.read<CameraCubit>().initializeCamera();
            return const Center(
              child: CircularProgressIndicator(color: ColorManager.primaryBlue),
            );
          },
          cameraReady: (cameraController) {
            return CameraPreviewSection(cameraController: cameraController);
          },
          error: (message) {
            return Center(child: Text(message));
          },
          orElse: () {
            context.read<CameraCubit>().loadCameras();
            return const Center(
              child: CircularProgressIndicator(color: ColorManager.black),
            );
          },
        );
      },
    );
  }
}
