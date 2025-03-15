import 'dart:io';

import 'package:flutter/material.dart';

class ScanReportView extends StatelessWidget {
  const ScanReportView({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('photo')),
      body: Center(
        child:
            imagePath.isNotEmpty
                ? Image.file(File(imagePath))
                : const Text("لم يتم التقاط صورة"),
      ),
    );
  }
}
