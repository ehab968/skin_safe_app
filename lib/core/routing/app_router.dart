import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/features/authentication/confirmation_code/ui/confirmation_code_view.dart';
import 'package:skin_care_app/features/authentication/forget_password/ui/forget_password_view.dart';
import 'package:skin_care_app/features/authentication/login/logic/login_cubit/login_cubit.dart';
import 'package:skin_care_app/features/authentication/login/ui/login_view.dart';
import 'package:skin_care_app/features/authentication/reset_password/ui/reset_password_view.dart';
import 'package:skin_care_app/features/authentication/sign_up/ui/sign_up_view.dart';
import 'package:skin_care_app/features/splash/splash_view.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashView:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => LoginCubit(),
            child: const LoginView(),
          ),
        );
      case Routes.signUpView:
        return MaterialPageRoute(
          builder: (_) => const SignUpView(),
        );
      case Routes.forgotPasswordView:
        return MaterialPageRoute(
          builder: (_) => const ForgetPasswordView(),
        );
      case Routes.confirmationCodeView:
        return MaterialPageRoute(
          builder: (_) => const ConfirmationCodeView(),
        );
      case Routes.resetPasswordView:
        return MaterialPageRoute(
          builder: (_) => const ResetPasswordView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }
}
