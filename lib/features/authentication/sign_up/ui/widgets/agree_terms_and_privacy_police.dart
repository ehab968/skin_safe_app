import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class AgreeTermsAndPrivacyPolice extends StatefulWidget {
  const AgreeTermsAndPrivacyPolice({super.key});

  @override
  State<AgreeTermsAndPrivacyPolice> createState() =>
      _AgreeTermsAndPrivacyPoliceState();
}

class _AgreeTermsAndPrivacyPoliceState
    extends State<AgreeTermsAndPrivacyPolice> {
  bool isAgreed = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 5.h),
          child: SizedBox(
            width: 35.w,
            child: IconButton(
              onPressed: () {
                setState(() {
                  isAgreed = !isAgreed;
                });
              },
              icon: Icon(
                color: isAgreed ? ColorManager.primaryBlue : Colors.black,
                isAgreed
                    ? Icons.check_box_outlined
                    : Icons.check_box_outline_blank,
                size: 24.r,
              ),
            ),
          ),
        ),
        horizontalSpace(width: 2),
        Container(
          padding: EdgeInsets.only(top: 15.h),
          child: RichText(
            text: TextSpan(
              text: 'I agree to the ',
              style: Styles.font14Black400Weight,
              children: [
                TextSpan(
                  text: 'Terms of Service',
                  style: Styles.font14PrimaryBlue500Weight,
                ),
                TextSpan(
                  text: '\nand ',
                  style: Styles.font14Black400Weight.copyWith(height: 1.3.h),
                ),
                TextSpan(
                  text: 'Privacy Policy',
                  style: Styles.font14PrimaryBlue500Weight,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
