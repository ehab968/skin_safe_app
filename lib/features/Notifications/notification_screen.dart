import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/features/Notifications/ui/widgets/notification_item.dart';
import 'package:skin_care_app/features/Notifications/ui/widgets/notification_model.dart';


class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({super.key});

  final List<NotificationModel> todayNotifications = [
    NotificationModel(
      title: "Appointment confirmation",
      message: "Congratulations! your appointment is confirmed, We're looking forward to meeting you",
      time: "now",
      image:"assets/images/confirmation.png" ,
    ),
    NotificationModel(
      title: "Appointment cancelled",
      message: "You have successfully cancelled your appointment with Dr.Hend Khaled",
      time: "1h",
      image:"assets/images/calender.png"
    ),
    NotificationModel(
      title: "Appointment alarm",
      message: "Your appointment with Dr Hady Helmy is within an hour, please make sure to arrive a bit earlier your consultation time.",
      time: "2h",
      iconData: Icons.alarm_rounded
    ),
  ];

  final List<NotificationModel> yesterdayNotifications = [
    NotificationModel(
      title: "Ultraviolet rays exposure",
      message: "You’re exposed to harmful ultraviolet rays, make sure to wear your sunscreen and cover yourself from these rays",
      time: "1d",
      image: "assets/images/uv.png"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: AppBottomNavigationBar(
          currentIndex: null,
          onTap: (index) => navigateToTab(context, index),
        ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        titleTextStyle: Styles.font20Black500Weight ,
        backgroundColor: ColorManager.white,
        title: const Text("Notifications")),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 7),
            child: Text("Today", style: TextStyle( fontSize: 17, fontWeight: FontWeight.w600) ),
          ),
          ...todayNotifications.map((n) => NotificationItem(notification: n)),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 7),
            child: Text("Yesterday", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
          ),
          ...yesterdayNotifications.map((n) => NotificationItem(notification: n)),
        ],
      ),
    );
  }
}
