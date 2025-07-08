import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/features/home/data/models/top_doctors_model.dart';
import 'package:skin_care_app/features/home/ui/widgets/DoctorCard_TopDoctor.dart';

class DoctorsList extends StatelessWidget {
  final List<TopDoctorsModel> doctors;

  const DoctorsList({super.key, required this.doctors});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: SizedBox(
                height: 270.h,
                width: 400.w,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: doctors.length,
                  itemBuilder: (context, index) {
                    final doctor = doctors[index];
                    return DoctorCard(
                      doctorId: doctor.id,
                      name: doctor.fullName,
                      specialty: doctor.specialty ?? 'Dermatologist',
                      rating: doctor.ratingsAverage ?? 0.0,
                      distance: '${doctor.experience ?? 0} years exp',
                      image: doctor.image ?? 'assets/images/doctorMale.jpg',
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
