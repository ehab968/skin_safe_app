import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/features/home/ui/widgets/home_view_body.dart';
import 'package:skin_care_app/features/scan/logic/camera_cubit/camera_cubit.dart';
import 'package:skin_care_app/features/scan/ui/scan_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeViewBody(),
    const Center(child: Text("🕒 History", style: TextStyle(fontSize: 20))),
    BlocProvider(
      create: (context) => CameraCubit()..loadCameras(),
      child: const ScanView(),
    ),
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
