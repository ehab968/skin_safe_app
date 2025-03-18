import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/features/scan/logic/camera_cubit/camera_cubit.dart';
import 'package:skin_care_app/features/scan/logic/camera_cubit/camera_state.dart';

class ImageBlocListener extends StatelessWidget {
  const ImageBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CameraCubit, CameraState>(
      listenWhen: (previous, current) => current is ImageCaptured,
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
      child: const SizedBox.shrink(),
    );
  }
}
