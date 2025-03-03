import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/extensions.dart';

import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        context.pushReplacementNamed(Routes.loginView);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/skin safe logo 1.png'),
          ),
          gradient: LinearGradient(
            colors: [Colors.white, ColorManager.primaryBlue],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 1],
          ),
        ),
      ),
    );
  }
}
