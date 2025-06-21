import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/di/dependancy_injection.dart';
import 'package:skin_care_app/core/routing/app_router.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/features/authentication/sign_up/logic/sign_up_cubit/sign_up_cubit.dart';

class SkinSafeApp extends StatelessWidget {
  const SkinSafeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: BlocProvider(
        create: (context) => getIt<SignUpCubit>(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.splashView,
          onGenerateRoute: AppRouter().generateRoute,
          theme: ThemeData(
            textSelectionTheme: const TextSelectionThemeData(
              cursorColor: ColorManager.primaryBlue,
              selectionHandleColor: ColorManager.primaryBlue,
            ),
            fontFamily: 'Poppins',
            scaffoldBackgroundColor: Colors.white,
            primaryColor: ColorManager.primaryBlue,
          ),
        ),
      ),
    );
  }
}
