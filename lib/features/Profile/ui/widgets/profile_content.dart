import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/Profile/data/models/user_profile_model.dart';
import 'package:skin_care_app/features/Profile/ui/widgets/personal_info.dart';
import 'package:skin_care_app/features/Profile/ui/widgets/profile_info_dynamic.dart';

class ProfileContent extends StatelessWidget {
  final UserProfileData userProfile;

  const ProfileContent({super.key, required this.userProfile});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(height: 22.h),
        ProfileInfoDynamic(userProfile: userProfile),
        verticalSpace(height: 18.h),
        Text('Personal info', style: Styles.font16Black700Weight),
        verticalSpace(height: 8.h),
        PersonalInfo(label: 'Name:', value: userProfile.name ?? 'Not provided'),
        PersonalInfo(
          label: 'Phone:',
          value: userProfile.phoneNumber ?? 'Not provided',
        ),
        PersonalInfo(
          label: 'Date of birth:',
          value: userProfile.dateOfBirth ?? 'Not provided',
        ),
        PersonalInfo(
          label: 'Gender:',
          value: _formatGender(userProfile.gender),
        ),
        PersonalInfo(
          label: 'Skintone:',
          value: _formatSkinTone(userProfile.skinTone),
        ),
        verticalSpace(height: 5.h),
      ],
    );
  }

  String _formatGender(String? gender) {
    if (gender == null || gender.isEmpty) return 'Not provided';
    return gender.toLowerCase() == 'male'
        ? 'Male'
        : gender.toLowerCase() == 'female'
        ? 'Female'
        : gender;
  }

  String _formatSkinTone(String? skinTone) {
    if (skinTone == null || skinTone.isEmpty) return 'Not provided';
    // Capitalize first letter of each word
    return skinTone
        .split(' ')
        .map(
          (word) =>
              word.isNotEmpty
                  ? '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}'
                  : word,
        )
        .join(' ');
  }
}
