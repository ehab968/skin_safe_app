import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:skin_care_app/features/scan/logic/camera_cubit/camera_state.dart';

class CameraCubit extends Cubit<CameraState> {
  CameraController? cameraController;
  final ValueNotifier<bool> isFlashOn = ValueNotifier(false);
  int selectedCameraIndex = 0;
  List<CameraDescription> cameras = [];
  CameraCubit() : super(const CameraState.initial());
  Future<void> loadCameras() async {
    try {
      cameras = await availableCameras();
      emit(CameraState.loaded(cameras));
    } catch (e) {
      print(e);
      emit(CameraState.error(e.toString()));
    }
  }

  Future<void> initializeCamera() async {
    if (cameras.isNotEmpty) {
      cameraController = CameraController(
        cameras[selectedCameraIndex],
        ResolutionPreset.high,
      );
      try {
        await cameraController!.initialize();
        emit(CameraState.cameraReady(cameraController!));
      } catch (e) {
        print(e);
        emit(CameraState.error(e.toString()));
      }
    }
  }

  Future<void> switchCamera() async {
    if (cameras.isEmpty) return;

    selectedCameraIndex = (selectedCameraIndex + 1) % cameras.length;
    await initializeCamera();
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

  Future<void> toggleFlash() async {
    if (cameraController == null || !cameraController!.value.isInitialized)
      return;
    isFlashOn.value = !isFlashOn.value;
    await cameraController!.setFlashMode(
      isFlashOn.value ? FlashMode.torch : FlashMode.off,
    );
  }

  Future<void> pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      emit(CameraState.imageCaptured(image.path));
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
