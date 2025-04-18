import 'package:flutter/material.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/features/Appointment_details/appointment_screen.dart';
import 'package:skin_care_app/features/BookingAppointment/ui/widgets/table_calender.dart';
import 'package:skin_care_app/features/Profile/profile_screen.dart';
import 'package:skin_care_app/features/authentication/forget_password/ui/forget_password_view.dart';
import 'package:skin_care_app/features/home/ui/widgets/home_view_body.dart';
import 'package:skin_care_app/features/on_boarding/ui/get_started_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  final List<DateTime> bookedDays = [
    DateTime(2025, 4, 15),   
    DateTime(2025, 4, 17),   
    DateTime.now().add(const Duration(days: 2)), 
  ];
  List<Widget> screens = [
     HomeViewBody(),
     ForgetPasswordView(),
    //  BookingCalendarWidget(bookedDays: [],  ),
    const Center(child: Text("📖 Scan", style: TextStyle(fontSize: 20))),
    const Center(child: Text("📖 Articles", style: TextStyle(fontSize: 20))),
     ProfileScreen(),
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
