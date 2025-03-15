
import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'camera_state.freezed.dart';
@freezed
class CameraState with _$CameraState {
  const factory CameraState.initial() = _Initial;
  const factory CameraState.loaded(List<CameraDescription>cameras) = CameraLoaded;
  const factory CameraState.cameraReady(CameraController cameraController) = CameraReady;
  const factory CameraState.error(String message) = CameraError;
  const factory CameraState.imageCaptured(String imagePath) = ImageCaptured;


}
