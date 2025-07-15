import 'dart:io';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart';
import 'package:skin_care_app/core/helper/constants.dart';
import 'package:skin_care_app/core/helper/shared_pref_helper.dart';

class PdfHelper {
  static Future<void> generatePdfReport({
    required String imagePath,
    required String feedback,
    required String name,
    required String date,
    required String phone,
    required String skinTone,
    required String gender,
    required String typeDetected,
  }) async {
    final pdf = Document();
    final image = MemoryImage(await File(imagePath).readAsBytes());
    pdf.addPage(
      Page(
        build:
            (context) => Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 170.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.r),
                      topRight: Radius.circular(16.r),
                    ),
                    image: DecorationImage(image: image, fit: BoxFit.cover),
                  ),
                ),
                SizedBox(height: 16.h),
                Text('Name: $name', style: const TextStyle(fontSize: 20)),
                Text('Date: $date', style: const TextStyle(fontSize: 20)),
                Text('Phone: $phone', style: const TextStyle(fontSize: 20)),
                Text(
                  'Skin Tone: $skinTone',
                  style: const TextStyle(fontSize: 20),
                ),
                Text('gender: $gender', style: const TextStyle(fontSize: 20)),
                Text(
                  'Type Detected: $typeDetected',
                  style: const TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20.h),
                Text(
                  'Feedback: $feedback',
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
      ),
    );
    // بتجيب الباس بتاع التطبيق
    final dir = await getApplicationDocumentsDirectory();
    // بتعمل ملف pdf في الديركتوري بتاع التطبيق
    final file = File('${dir.path}/scan_report.pdf');
    // بتكتب البيانات في الملف
    await file.writeAsBytes(await pdf.save());
    await SharedPrefHelper.setData(SharedPrefKeys.pdfPath, file.path);
  }

  static Future<bool> openPdf() async {
    final pdfPath = await SharedPrefHelper.getString(SharedPrefKeys.pdfPath);
    if (pdfPath != null && pdfPath.isNotEmpty) {
      final file = File(pdfPath);
      if (await file.exists()) {
        await OpenFile.open(file.path);
        return true;
      }
    } else if (pdfPath == null || pdfPath.isEmpty) {
      return false;
    }
    return true;
  }
}
