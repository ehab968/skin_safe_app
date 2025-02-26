// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/routing/app_router.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
class SkinSafeApp extends StatelessWidget {
  const SkinSafeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
      //   useInheritedMediaQuery: true,
      //  locale: DevicePreview.locale(context),
      //  builder: DevicePreview.appBuilder,
       home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
        ),

       ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashView,
        onGenerateRoute: AppRouter().generateRoute,
        theme: ThemeData(
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: Colors.white,
          primaryColor: ColorManager.primaryBlue,
        ),
      ),
    );
  }
}
