import 'package:flutter/widgets.dart';

class NotificationModel {
  final String title;
  final String message;
  final String time;
  final String? image;
  final IconData? iconData;
  final bool isRead;

  NotificationModel({
    required this.title,
    required this.message,
    required this.time,
    this.image,
    this.iconData,
    this.isRead = false,
  });
}
