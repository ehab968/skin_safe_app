import 'package:flutter/material.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/features/Home/home_view.dart';
import 'package:skin_care_app/features/authentication/login/ui/login_view.dart';
import 'package:skin_care_app/features/on_boarding/ui/on_boarding_view.dart';
import 'package:skin_care_app/features/on_boarding/ui/second_on_boarding_view.dart';
import 'package:skin_care_app/features/on_boarding/ui/third_on_boarding_view.dart';
import 'package:skin_care_app/features/splash/splash_view.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashView:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
         case Routes.onBoardingView:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingView(),
        );
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
        case Routes.SecondOnBoardingView:
        return MaterialPageRoute(
          builder: (_) => const SecondOnBoardingView(),
        );
        case Routes.ThirdOnBoardingView:
        return MaterialPageRoute(
          builder: (_) => const ThirdOnBoardingView(),
        );
         case Routes.homeView:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
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
