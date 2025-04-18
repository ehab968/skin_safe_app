import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class AboutDoctorsAndReviewsSection extends StatelessWidget {
  const AboutDoctorsAndReviewsSection({super.key, required this.selectedIndex, required this.onTapChanged});
  final int selectedIndex;
  final void Function(int) onTapChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,

      children: [
        GestureDetector(
          onTap: () => onTapChanged(0),
          child: Container(
            decoration: BoxDecoration(
              border: BorderDirectional(
                bottom:
                    selectedIndex == 0
                        ? BorderSide(color: ColorManager.primaryBlue, width: 2.r)
                        : BorderSide.none,
              ),
            ),
            child: Text(
              'About doctor',
              style:
                  selectedIndex == 0
                      ? Styles.font16PrimaryBlue400Weight.copyWith(
                        fontWeight: FontWeight.w600,
                      )
                      : Styles.font16Black500Weight.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => onTapChanged(1),
          child: Container(
            decoration: BoxDecoration(
              border: BorderDirectional(
                bottom:
                    selectedIndex == 1
                        ? BorderSide(color: ColorManager.primaryBlue, width: 2.r)
                        : BorderSide.none,
              ),
            ),
            child: Text(
              'Reviews',
              style:
                  selectedIndex == 1
                      ? Styles.font16PrimaryBlue400Weight.copyWith(
                        fontWeight: FontWeight.w600,
                      )
                      : Styles.font16Black500Weight.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
            ),
          ),
        ),
      ],
    );
  }
}
