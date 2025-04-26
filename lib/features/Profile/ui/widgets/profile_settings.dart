import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class ProfileSettings extends StatelessWidget {
  final List<_MenuItem> items = [
    _MenuItem('My History', 'assets/images/history_icon.png', true),
    _MenuItem('My Appointments', 'assets/images/appointment_icon.png', true),
    _MenuItem('Settings', 'assets/images/settings_icon.png', true),
    _MenuItem('Log Out', 'assets/images/logout_icon.png', false),
  ];

  ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),

        itemCount: items.length,
        separatorBuilder:
            (context, index) => const Divider(height: 1, thickness: 1),
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            dense: true,
            leading:
                item.image != null
                    ? Image.asset(
                      item.image!,
                      width: 24,
                      height: 24,
                      color: ColorManager.darkGray,
                    )
                    : null,
            title: Text(item.title, style: Styles.font16Black400Weight),
            trailing: item.hasArrow ? const Icon(Icons.chevron_right) : null,
            onTap: () {
              switch (index) {
                case 0: 
                case 1:
                  context.pushNamed(Routes.myAppointmentsScreen);
                  break;
                case 2:
                case 3:
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          insetPadding: EdgeInsets.symmetric(
                            horizontal: 24.h,
                            vertical: 8,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          titlePadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                          content: SizedBox(
                            width: 410.w,
                            height: 25.h,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Are you sure you want to log out?",
                                  style: Styles.font14Black400Weight,
                                ),
                              ],
                            ),
                          ),
                          title: Text(
                            "LOG OUT",
                            style: Styles.font16Black600Weight,
                          ),
                          actionsPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 4,
                          ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text(
                                    "Cancel",
                                    style: Styles.font14PrimaryBlue400Weight,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    context.pushNamed(Routes.splashView);
                                  },
                                  child: Text(
                                    "Ok",
                                    style: Styles.font14PrimaryBlue400Weight,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                  );

                  break;
              }
            },
          );
        },
      ),
    );
  }
}

class _MenuItem {
  final String title;
  final String? image;
  final bool hasArrow;

  _MenuItem(this.title, this.image, this.hasArrow);
}
