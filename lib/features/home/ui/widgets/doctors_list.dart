import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';


class DoctorsList extends StatelessWidget {
   DoctorsList({super.key});

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
      {
        "name": "Dr. Hend Khaled",
        "specialty": "Dermatologist",
        "rating": 4.8,
        "distance": "500 meters",
        "image": "assets/images/drHendKhaled.jpg"
      },
      {
        "name": "Dr. Hady Helmy",
        "specialty": "Dermatologist",
        "rating": 4.8,
        "distance": "5.2km",
        "image": "assets/images/DrHadyHelmy.jpg"
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
    return SizedBox(
      width: 139.w,
      height: 165.h,  
      child: Card(
        margin: EdgeInsets.only(right: 14),
        color: ColorManager.white,
        shadowColor: Colors.black.withOpacity(0.3),
        elevation: 6,
      
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max, 
            children: [
             
              verticalSpace(height: 4.h), 
              
              Padding(
                // padding: EdgeInsets.all(8),
                padding:  EdgeInsets.only(top: 16 ,left: 16),
                child: SizedBox(
                  width: 80.w,
                  height: 80.w,
                  child: ClipOval(

                    child: Image.asset(image, fit: BoxFit.cover),
                  ),
                ),
              ),

              verticalSpace(height: 23.h), 

              
              Flexible( 
                child: Text(
                  name,
                  style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis, 
                ),
              ),

              verticalSpace(height: 4.h), 
              
              Flexible(
                child: Text(
                  specialty,
                  style: Styles.font11MainGray400Weight,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis, 
                ),
              ),

              verticalSpace(height: 4.h), 

              
              Expanded( 
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.star, color: ColorManager.primaryBlue, size: 12.sp),
                    Text(rating.toString(), style: Styles.font10PrimaryBlue500Weight , ),
                    horizontalSpace(width: 4.w),
                    Icon(Icons.location_on, color: ColorManager.MainGray, size: 12.sp),
                    Text(distance, style: Styles.font10GrayLIGHT500Weight, overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    
  }
}
