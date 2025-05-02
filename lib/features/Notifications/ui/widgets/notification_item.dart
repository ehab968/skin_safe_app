// import 'package:flutter/material.dart';
// import 'package:skin_care_app/core/theme/colors.dart';
// import 'package:skin_care_app/core/theme/styles.dart';
// import 'package:skin_care_app/features/Notifications/ui/widgets/notification_model.dart';


// class NotificationItem extends StatelessWidget {
//   final NotificationModel notification;

//   const NotificationItem({super.key, required this.notification});

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(  
//      leading: notification.image != null
//           ? Image.asset(notification.image!, color: ColorManager.primaryBlue,width: 20,height: 20,)  
//           : Icon(notification.iconData, color: ColorManager.primaryBlue), 
//       title: Text(notification.title, style: Styles.font16Black500Weight),
//       subtitle: Text(notification.message , style:  Styles.font14DarkGray400Weight ,),
//       trailing: Text(notification.time, style: Styles.font14DarkGray300Weight),
//       contentPadding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/Notifications/ui/widgets/notification_model.dart';

class NotificationItem extends StatelessWidget {
  final NotificationModel notification;

  const NotificationItem({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 22.0),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // لضبط العناصر على نفس السطر مع المسافة بينهما
        children: [
          // الأيقونة أو الصورة
          notification.image != null
              ? Image.asset(
                  notification.image!,
                  color: ColorManager.primaryBlue,
                  width: 21,
                  height: 21,
                )
              : Icon(
                  notification.iconData,
                  color: ColorManager.primaryBlue,
                  size: 22,
                ),
          const SizedBox(width: 8), // مسافة بين الأيقونة والنص
          // النص (العنوان)
          Expanded(
            child: Text(
              notification.title,
              style: Styles.font16Black500Weight,
            ),
          ),
          // الـ trailing
          Text(
            notification.time,
            style: Styles.font14DarkGray300Weight,
          ),
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8.0, left:25 , bottom:12 ), // المسافة بين العنوان والرسالة
        child: Text(
          notification.message,
          style: Styles.font14DarkGray400Weight,
        ),
      ),
    );
  }
}

