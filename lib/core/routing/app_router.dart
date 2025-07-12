import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/di/dependancy_injection.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/features/home/data/models/top_doctors_model.dart';
import 'package:skin_care_app/features/Appointment_details/appointment_screen.dart';
import 'package:skin_care_app/features/Appointment_details/logic/cubit/appointment_details_cubit.dart';
import 'package:skin_care_app/features/Articles/logic/cubit/article_cubit.dart';
import 'package:skin_care_app/features/Articles/ui/article_view.dart';
import 'package:skin_care_app/features/BookingAppointment/ui/booking_view.dart';
import 'package:skin_care_app/features/BookingAppointment/ui/widgets/appointment_confirmation.dart';
import 'package:skin_care_app/features/My_Appointments/myAppointment_screen.dart';
import 'package:skin_care_app/features/Notifications/notification_screen.dart';
import 'package:skin_care_app/features/Profile/logic/cubit/user_profile_cubit.dart';
import 'package:skin_care_app/features/Profile/profile_screen.dart';
import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/about_doctor_view.dart';
import 'package:skin_care_app/features/article_body/ui/article_body_screen.dart';
import 'package:skin_care_app/features/authentication/confirmation_code/ui/confirmation_code_view.dart';
import 'package:skin_care_app/features/authentication/confirmation_code/logic/cubit/confirmation_code_cubit.dart';
import 'package:skin_care_app/features/authentication/forget_password/ui/forget_password_view.dart';
import 'package:skin_care_app/features/authentication/forget_password/logic/cubit/forget_password_cubit.dart';
import 'package:skin_care_app/features/authentication/login/ui/login_view.dart';
import 'package:skin_care_app/features/authentication/login/logic/login_cubit/login_cubit.dart';
import 'package:skin_care_app/features/authentication/reset_password/ui/reset_password_view.dart';
import 'package:skin_care_app/features/authentication/reset_password/logic/cubit/reset_password_cubit.dart';
import 'package:skin_care_app/features/authentication/sign_up/ui/sign_up_view.dart';
import 'package:skin_care_app/features/authentication/sign_up/ui/sign_up_view_2.dart';
import 'package:skin_care_app/features/authentication/verfication_code/ui/verfication_code_view.dart';
import 'package:skin_care_app/features/authentication/verfication_code/logic/cubit/verfication_cubit.dart';
import 'package:skin_care_app/features/reports/report_history/ui/history_view.dart';
import 'package:skin_care_app/features/home/ui/all_doctors_view.dart';
import 'package:skin_care_app/features/home/ui/home_view.dart';
import 'package:skin_care_app/features/on_boarding/ui/get_started_view.dart';
import 'package:skin_care_app/features/on_boarding/ui/on_boarding_view.dart';
import 'package:skin_care_app/features/on_boarding/ui/second_on_boarding_view.dart';
import 'package:skin_care_app/features/on_boarding/ui/third_on_boarding_view.dart';
import 'package:skin_care_app/features/scan/logic/camera_cubit/camera_cubit.dart';
import 'package:skin_care_app/features/scan/ui/scan_view.dart';
import 'package:skin_care_app/features/reports/logic/cubit/user_report_cubit.dart';
import 'package:skin_care_app/features/reports/logic/scan_report_cubit/scan_report_cubit.dart';
import 'package:skin_care_app/features/reports/scan_report/ui/scan_report_view.dart';
import 'package:skin_care_app/features/splash/splash_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // Handle route settings and parameters
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashView:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onBoardingView:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.loginView:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginView(),
              ),
        );
      case Routes.signUpView:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      case Routes.signUpView2:
        return MaterialPageRoute(builder: (_) => const SignUpView2());
      case Routes.verficationCodeView:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<VerficationCubit>(),
                child: const VerficationCodeView(),
              ),
        );
      case Routes.forgotPasswordView:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<ForgetPasswordCubit>(),
                child: const ForgetPasswordView(),
              ),
        );
      case Routes.confirmationCodeView:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<ConfirmationCodeCubit>(),
                child: const ConfirmationCodeView(),
              ),
        );
      case Routes.resetPasswordView:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<ResetPasswordCubit>(),
                child: const ResetPasswordView(),
              ),
        );
      case Routes.secondOnBoardingView:
        return MaterialPageRoute(builder: (_) => const SecondOnBoardingView());
      case Routes.thirdOnBoardingView:
        return MaterialPageRoute(builder: (_) => const ThirdOnBoardingView());
      case Routes.homeView:
        return MaterialPageRoute(builder: (_) => const HomeView());
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
          builder:
              (_) => MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create:
                        (context) =>
                            getIt<ScanReportCubit>()..createScanReport(
                              imagePath ?? 'no image path sent',
                            ),
                  ),
                  BlocProvider(
                    create:
                        (context) =>
                            getIt<UserProfileCubit>()..getUserProfile(),
                  ),
                  BlocProvider(
                    create:
                        (context) => getIt<UserReportCubit>()..getUserReports(),
                  ),
                ],
                child: ScanReportView(imagePath: imagePath ?? ''),
              ),
        );
      case Routes.aboutDoctorView:
        return MaterialPageRoute(
          builder: (_) => const AboutDoctorView(),
          settings: settings,
        );
      case Routes.historyView:
        return MaterialPageRoute(
          builder:
              (_) => MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create:
                        (context) => getIt<UserReportCubit>()..getUserReports(),
                  ),
                  BlocProvider(
                    create:
                        (context) =>
                            getIt<UserProfileCubit>()..getUserProfile(),
                  ),
                ],
                child: const HistoryView(),
              ),
        );
      case Routes.getStartedView:
        return MaterialPageRoute(builder: (_) => const GetStartedView());
      case Routes.showAppointmentConfirmation:
        return MaterialPageRoute(
          builder: (_) => const AppointmentConfirmationDialog(),
        );
      case Routes.appointmentScreen:
        final appointmentId = settings.arguments as String?;
        return MaterialPageRoute(
          settings: settings,
          builder:
              (_) => BlocProvider(
                create: (_) => getIt<AppointmentDetailsCubit>(),
                child: AppointmentScreen(appointmentId: appointmentId),
              ),
        );
      case Routes.myAppointmentsScreen:
        return MaterialPageRoute(builder: (_) => const MyAppointmentScreen());
      case Routes.profileView:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case Routes.articlesView:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<ArticleCubit>()..getAllArticles(),
                child: const ArticlesView(),
              ),
        );
      case Routes.ArticleBodyScreen:
        return MaterialPageRoute(
          builder: (_) => const ArticleBodyScreen(),
          settings: settings,
        );
      case Routes.NotificationsScreen:
        return MaterialPageRoute(builder: (_) => const NotificationsScreen());
      case Routes.bookingView:
        // Handle both doctor object and doctor ID from route arguments
        final arguments = settings.arguments;
        if (arguments is TopDoctorsModel) {
          // Full doctor object passed
          return MaterialPageRoute(
            builder: (_) => BookingView(doctor: arguments),
            settings: settings,
          );
        } else if (arguments is String) {
          // Doctor ID passed
          return MaterialPageRoute(
            builder: (_) => BookingView(doctorId: arguments),
            settings: settings,
          );
        } else {
          // No arguments
          return MaterialPageRoute(
            builder: (_) => const BookingView(),
            settings: settings,
          );
        }
      case Routes.allDoctorsView:
        return MaterialPageRoute(builder: (_) => const AllDoctorsView());

      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
