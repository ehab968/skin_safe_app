import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/features/scan/logic/camera_cubit/camera_cubit.dart';

class ZoomSlider extends StatelessWidget {
  const ZoomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.remove, size: 24.r, color: Colors.white),
          onPressed: () {
            final cubit = context.read<CameraCubit>();
            if (cubit.zoomLevel.value > 1.0) {
              cubit.setZoomLevel(
                (cubit.zoomLevel.value - 0.1).clamp(1.0, cubit.maxZoom),
              );
            }
          },
        ),
        ValueListenableBuilder(
          valueListenable: context.read<CameraCubit>().zoomLevel,
          builder: (context, zoomLevel, child) {
            final maxZoom = context.read<CameraCubit>().maxZoom;
            return Expanded(
              child: SliderTheme(
                data: SliderThemeData(
                  thumbShape: SliderComponentShape.noThumb,
                  overlayShape: SliderComponentShape.noOverlay,
                ),
                child: Slider(
                  value: zoomLevel,
                  min: 1.0,
                  max: maxZoom,
                  divisions: (maxZoom > 1.0) ? maxZoom.toInt() : null,
                  thumbColor: ColorManager.white,
                  activeColor: Colors.transparent,

                  onChanged: (val) {
                    context.read<CameraCubit>().cameraController!.setZoomLevel(
                      val,
                    );
                    context.read<CameraCubit>().zoomLevel.value = val;
                  },
                ),
              ),
            );
          },
        ),
        IconButton(
          icon: Icon(Icons.add, size: 24.r, color: Colors.white),
          onPressed: () {
            final cubit = context.read<CameraCubit>();
            if (cubit.zoomLevel.value < cubit.maxZoom) {
              cubit.setZoomLevel(
                (cubit.zoomLevel.value + 0.1).clamp(1.0, cubit.maxZoom),
              );
            }
          },
        ),
      ],
    );
  }
}
