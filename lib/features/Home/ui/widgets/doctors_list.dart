import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';


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
        "image": "assets/images/DrAdamYounes.jpg"
      },
      {
        "name": "Dr. Gamila Emad",
        "specialty": "Dermatologist",
        "rating": 4.9,
        "distance": "1.5km",
        "image": "assets/images/DrGamilaEmad.jpg"
      },
      {
        "name": "Dr. Hossam Ali",
        "specialty": "Dermatologist",
        "rating": 4.8,
        "distance": "2km",
        "image": "assets/images/DrHossamAli.jpg"
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
                height: 186.h, 
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // **هنا تم التحديد أن الاتجاه أفقي**
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

class DoctorCard extends StatelessWidget {
  final String name;
  final String specialty;
  final double rating;
  final String distance;
  final String image;

  const DoctorCard({
    super.key,
    required this.name,
    required this.specialty,
    required this.rating,
    required this.distance,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 119.w,
      height: 186.h, // عرض الكارد
      margin: const EdgeInsets.only(right: 8),
      child: Card(
        color: ColorManager.white ,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpace(height: 16.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(50.h),
                child: Image.asset(image , width: 80, height: 80, fit: BoxFit.cover),
              ),
              verticalSpace(height: 23.h),
              Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
              verticalSpace(height: 8.h),
              Text(specialty, style: const TextStyle(color: Colors.grey)),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 16),
                  Text(rating.toString(), style: const TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(width: 4),
                  Text(distance, style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
