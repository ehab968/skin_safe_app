import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/features/scan/logic/camera_cubit/camera_cubit.dart';

class GalleryButton extends StatelessWidget {
  const GalleryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.add_photo_alternate_outlined,
        size: 32.r,
        color: ColorManager.white,
      ),
      onPressed: () {
        context.read<CameraCubit>().pickImageFromGallery();
      },
    );
  }
}
