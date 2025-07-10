import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/core/di/dependancy_injection.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/features/Notifications/logic/cubit/notification_cubit.dart';
import 'package:skin_care_app/features/Notifications/logic/cubit/notification_state.dart';
import 'package:skin_care_app/features/Notifications/ui/widgets/notification_item.dart';
import 'package:skin_care_app/features/Notifications/ui/widgets/notification_model.dart';


class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NotificationCubit>()..getNotifications(),
      child: Scaffold(
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
      body: BlocBuilder<NotificationCubit, NotificationState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (notifications) {
              if (notifications.isEmpty) {
                return const Center(child: Text('No notifications found'));
              }
              return ListView.builder(
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  final notification = notifications[index];
                  return NotificationItem(
                    notification: NotificationModel(
                      title: notification.title,
                      message: notification.message,
                      time: notification.createdAt,
                      image: _getIconFromType(notification.iconType),
                    ),
                  );
                },
              );
            },
            error: (error) => Center(child: Text(error.message ?? 'An error occurred')),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    ),
    );
  }

  String? _getIconFromType(String? iconType) {
    switch (iconType) {
      case 'confirmation':
        return 'assets/images/confirmation.png';
      case 'cancelled':
        return 'assets/images/calender.png';
      case 'uv':
        return 'assets/images/uv.png';
      default:
        return null;
    }
  }
}
