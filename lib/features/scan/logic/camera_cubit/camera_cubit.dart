import 'package:camera/camera.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:skin_care_app/features/scan/logic/camera_cubit/camera_state.dart';

class CameraCubit extends Cubit<CameraState> {
  CameraController? cameraController;
  CameraCubit() : super(const CameraState.initial());
  Future<void> loadCameras() async {
    try {
      final cameras = await availableCameras();
      emit(CameraState.loaded(cameras));
    } catch (e) {
      print(e);
      emit(CameraState.error(e.toString()));
    }
  }

  Future<void> initializeCamera() async {
    if (state is CameraLoaded) {
      final cameras = (state as CameraLoaded).cameras;
      if (cameras.isNotEmpty) {
        cameraController = CameraController(cameras[0], ResolutionPreset.high);
        try {
          await cameraController!.initialize();
          emit(CameraState.cameraReady(cameraController!));
        } catch (e) {
          print(e);
          emit(CameraState.error(e.toString()));
        }
      }
    }
  }

  Future<void> captureImage() async {
    if (cameraController == null || !cameraController!.value.isInitialized) {
      emit(const CameraState.error("الكاميرا غير مهيأة"));
      return;
    }
    if (cameraController!.value.isTakingPicture) {
      print("الكاميرا مشغولة بالتقاط صورة حالياً...");
      return;
    }

    try {
      final XFile image = await cameraController!.takePicture();
      print('تم التقاط الصورة بنجاح: ${image.path}');
      emit(CameraState.imageCaptured(image.path));
    } catch (e) {
      print("خطأ أثناء التقاط الصورة: $e");
      emit(CameraState.error(e.toString()));
    }
  }

  void disposeCamera() {
    if (cameraController != null) {
      cameraController!.dispose();
      cameraController = null;
      emit(const CameraState.initial());
    }
  }

  Future<void> checkAndRequestPermissions() async {
    final status = await Permission.camera.request();

    if (status.isGranted) {
      print("camera permission granted");
    } else {
      print("camera permission denied");
    }
  }
}
