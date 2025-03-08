import 'package:flutter/material.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/features/authentication/forget_password/ui/forget_password_view.dart';
import 'package:skin_care_app/features/home/ui/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeViewBody(),
    const ForgetPasswordView(),
    const Center(child: Text("📷 Scan", style: TextStyle(fontSize: 20))),
    const Center(child: Text("📖 Articles", style: TextStyle(fontSize: 20))),
    const Center(child: Text("👤 Profile", style: TextStyle(fontSize: 20))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: screens[currentIndex],
    );
  }
}
