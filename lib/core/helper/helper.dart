import 'package:flutter/material.dart';
import 'package:skin_care_app/core/routing/routes.dart';

void pagePushAnimation(BuildContext context, Widget page) {
  Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = const Offset(1.0, 0.0); // Start from the right side
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    ),
  );
}

void navigateToTab(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.pushReplacementNamed(context, Routes.homeView);
      break;
    case 1:
      null;
      break;
    case 2:
      Navigator.pushReplacementNamed(context, Routes.scanView);
      break;
    case 3:
      null;
      break;
    case 4:
      Navigator.pushReplacementNamed(context, Routes.aboutDoctorView);
      break;
  }
}
