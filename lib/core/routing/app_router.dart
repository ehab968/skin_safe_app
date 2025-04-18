import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/routing/routes.dart';

import 'package:skin_care_app/features/Appointment_details/appointment_screen.dart';
import 'package:skin_care_app/features/BookingAppointment/ui/widgets/appointment_confirmation.dart';
import 'package:skin_care_app/features/My_Appointments/myAppointment_screen.dart';

import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/about_doctor_view.dart';

import 'package:skin_care_app/features/authentication/login/ui/login_view.dart';
import 'package:skin_care_app/features/home/ui/home_view.dart';
import 'package:skin_care_app/features/on_boarding/ui/get_started_view.dart';
import 'package:skin_care_app/features/on_boarding/ui/on_boarding_view.dart';
import 'package:skin_care_app/features/on_boarding/ui/second_on_boarding_view.dart';
import 'package:skin_care_app/features/on_boarding/ui/third_on_boarding_view.dart';
import 'package:skin_care_app/features/authentication/confirmation_code/ui/confirmation_code_view.dart';
import 'package:skin_care_app/features/authentication/forget_password/ui/forget_password_view.dart';
import 'package:skin_care_app/features/authentication/login/logic/login_cubit/login_cubit.dart';
import 'package:skin_care_app/features/authentication/reset_password/ui/reset_password_view.dart';
import 'package:skin_care_app/features/authentication/sign_up/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:skin_care_app/features/authentication/sign_up/ui/sign_up_view.dart';
import 'package:skin_care_app/features/authentication/sign_up/ui/sign_up_view_2.dart';
import 'package:skin_care_app/features/scan/logic/camera_cubit/camera_cubit.dart';
import 'package:skin_care_app/features/scan/ui/scan_view.dart';
import 'package:skin_care_app/features/scan_report/ui/scan_report_view.dart';
import 'package:skin_care_app/features/splash/splash_view.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashView:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onBoardingView:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.loginView:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => LoginCubit(),
                child: const LoginView(),
              ),
        );
      case Routes.signUpView:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => SignUpCubit(),
                child: const SignUpView(),
              ),
        );
      case Routes.signUpView2:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => SignUpCubit(),
                child: const SignUpView2(),
              ),
        );
      case Routes.forgotPasswordView:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordView());
      case Routes.confirmationCodeView:
        return MaterialPageRoute(builder: (_) => const ConfirmationCodeView());
      case Routes.resetPasswordView:
        return MaterialPageRoute(builder: (_) => const ResetPasswordView());
      case Routes.secondOnBoardingView:
        return MaterialPageRoute(builder: (_) => const SecondOnBoardingView());
      case Routes.thirdOnBoardingView:
        return MaterialPageRoute(builder: (_) => const ThirdOnBoardingView());
      case Routes.homeView:
        return MaterialPageRoute(builder: (_) => const HomeView());

 case Routes.GetStartedView:
        return MaterialPageRoute(builder: (_) => const GetStartedView());

        case Routes.showAppointmentConfirmation:
        return MaterialPageRoute(builder: (_) =>  showAppointmentConfirmation());
         case Routes.AppointmentScreen :
        return MaterialPageRoute(builder: (_) => const AppointmentScreen());

         case Routes.MyAppointmentsScreen :
        return MaterialPageRoute(builder: (_) =>  MyAppointmentsScreen());


      default:

      case Routes.scanView:

        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => CameraCubit()..loadCameras(),
                child: const ScanView(),
              ),
        );
      case Routes.scanReportView:
        final imagePath = settings.arguments as String?;
        return MaterialPageRoute(
          builder: (_) => ScanReportView(imagePath: imagePath ?? ''),
        );
      case Routes.aboutDoctorView:
        return MaterialPageRoute(builder: (_) => const AboutDoctorView());
      default:
        return null;
    }
  }
}
