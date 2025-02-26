// import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/skin_safe_app.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(
      SkinSafeApp(),
    // DevicePreview(
    // builder: (context) => SkinSafeApp(),
    //  enabled: true,
    //  devices: [
    //   Devices.android.samsungGalaxyNote20Ultra,
    //  ],
    //  )
    // DevicePreview(
    // builder: (context) => SkinSafeApp(),
    //  enabled: true,
    //  devices: [
    //   Devices.android.samsungGalaxyNote20Ultra,
    //  ],
    //  )
    );
  
}
