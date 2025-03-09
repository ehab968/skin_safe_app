import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:skin_care_app/core/theme/colors.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: ColorManager.primaryBlue,
      unselectedItemColor: ColorManager.black,
      iconSize: 24.r,

      items: const [
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.house),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.clockRotateLeft),
          label: 'History',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.expand),
          label: 'ٍScan',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.newspaper),
          label: 'Articles',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.circleUser),
          label: 'Profile',
        ),
      ],
    );
  }
}
