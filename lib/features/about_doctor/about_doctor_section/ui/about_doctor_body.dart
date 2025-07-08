import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/widgets/about_doctor_section.dart';
import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/widgets/about_doctor_shimmer.dart';
import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/widgets/about_doctors_and_reviews_bar.dart';
import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/widgets/book_appointment_button.dart';
import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/widgets/first_doctor_details_section.dart';
import 'package:skin_care_app/features/about_doctor/review_section/ui/review_section.dart';
import 'package:skin_care_app/features/home/data/models/top_doctors_model.dart';

class AboutDoctorBody extends StatefulWidget {
  const AboutDoctorBody({super.key, required this.doctorData});
  final TopDoctorsModel doctorData;
  @override
  State<AboutDoctorBody> createState() => _AboutDoctorBodyState();
}

class _AboutDoctorBodyState extends State<AboutDoctorBody> {
  int selectedIndex = 0;
  bool isloading = true;
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isloading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Stack(
        children: [
          isloading
              ? buildShimmer()
              : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  verticalSpace(height: 55),
                  FirstDoctorDetailsSection(
                    doctorImage: widget.doctorData.image!,
                    firstDoctorName:
                        widget.doctorData.firstName ?? 'Dr. John Doe',
                    secondDoctorName:
                        widget.doctorData.secondName ?? 'Dr. Jane Doe',
                    speciality: widget.doctorData.specialty ?? 'Dermatologist',
                    experience: widget.doctorData.experience ?? 0,
                    rating: widget.doctorData.ratingsAverage ?? 0.0,
                    reviews: widget.doctorData.ratingsQuantity ?? 0,
                  ),
                  verticalSpace(height: 24),
                  AboutDoctorsAndReviewsBar(
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
                              ? AboutDoctorSection(
                                aboutDoctorDetails:
                                    widget.doctorData.about ??
                                    'No details available.',
                                certficateDetails:
                                    widget.doctorData.certificate ??
                                    'No certificates available.',
                              )
                              : ReviewSection(
                                doctorReview: widget.doctorData.reviews ?? [],
                              ),
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
