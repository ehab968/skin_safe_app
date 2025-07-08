import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/Profile/data/models/user_profile_model.dart';

class ProfileInfoDynamic extends StatelessWidget {
  final UserProfileData userProfile;

  const ProfileInfoDynamic({super.key, required this.userProfile});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 45.sp,
          backgroundImage: const AssetImage('assets/images/profile_image.jpg'),
          backgroundColor: Colors.grey[300],
        ),
        horizontalSpace(width: 32.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userProfile.name ?? 'Unknown User',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(height: 8.h),
              Text(
                userProfile.email ?? 'No email provided',
                style: Styles.font13MainGray400Weight,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
