import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/features/home/ui/widgets/DoctorCard_TopDoctor.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> doctors = [
      {
        "name": "Dr. Adam Younes",
        "specialty": "Dermatologist",
        "rating": 4.7,
        "distance": "800 meters",
        "image": "assets/images/DrAdamYounes.jpg",
      },
      {
        "name": "Dr. Gamila Emad",
        "specialty": "Dermatologist",
        "rating": 4.9,
        "distance": "1.5km",
        "image": "assets/images/DrGamilaEmad.jpg",
      },
      {
        "name": "Dr. Hossam Ali",
        "specialty": "Dermatologist",
        "rating": 4.8,
        "distance": "2km",
        "image": "assets/images/DrHossamAli.jpg",
      },
      {
        "name": "Dr. Hend Khaled",
        "specialty": "Dermatologist",
        "rating": 4.8,
        "distance": "500 meters",
        "image": "assets/images/drHendKhaled.jpg",
      },
      {
        "name": "Dr. Hady Helmy",
        "specialty": "Dermatologist",
        "rating": 4.8,
        "distance": "5.2km",
        "image": "assets/images/DrHadyHelmy.jpg",
      },
    ];

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
                  // physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: doctors.length,
                  itemBuilder: (context, index) {
                    final doctor = doctors[index];
                    return DoctorCard(
                      name: doctor["name"],
                      specialty: doctor["specialty"],
                      rating: doctor["rating"],
                      distance: doctor["distance"],
                      image: doctor["image"],
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
