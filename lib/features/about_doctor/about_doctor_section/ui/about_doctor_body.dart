import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/widgets/about_doctor_section.dart';
import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/widgets/about_doctors_and_reviews_section.dart';
import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/widgets/book_appointment_button.dart';
import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/widgets/first_doctor_details_section.dart';
import 'package:skin_care_app/features/about_doctor/review_section/ui/review_section.dart';

class AboutDoctorBody extends StatefulWidget {
  const AboutDoctorBody({super.key});

  @override
  State<AboutDoctorBody> createState() => _AboutDoctorBodyState();
}

class _AboutDoctorBodyState extends State<AboutDoctorBody> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              verticalSpace(height: 55),
              const FirstDoctorDetailsSection(),
              verticalSpace(height: 24),
              AboutDoctorsAndReviewsSection(
                selectedIndex: selectedIndex,
                onTapChanged: (selectedTap) {
                  setState(() {
                    selectedIndex = selectedTap;
                  });
                },
              ),
              verticalSpace(height: 24),
              Expanded(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  switchInCurve: Curves.easeIn,
                  child:
                      selectedIndex == 0
                          ? const AboutDoctorSection()
                          : const ReviewSection(),
                ),
              ),
            ],
          ),
          const BookAppointmentButton(),
        ],
      ),
    );
  }
}
