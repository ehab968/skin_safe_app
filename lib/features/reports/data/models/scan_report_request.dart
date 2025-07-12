import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';

class ScanReportRequest {
  final String imagePath;

  ScanReportRequest({required this.imagePath});

  Future<FormData> toFormData() async {
    return FormData.fromMap({
      'scannedImage': await MultipartFile.fromFile(
        imagePath,
        filename: imagePath.split('/').last,
        contentType: MediaType('image', 'jpeg'),
      ),
    });
  }
}
