import 'package:flutter/material.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/features/authentication/login/ui/login_view.dart';
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
          builder: (_) => const LoginView(),
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
