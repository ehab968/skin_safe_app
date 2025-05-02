import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/Articles/ui/widgets/read_more_button.dart';

class ArticleCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final VoidCallback onTap;

  const ArticleCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: ColorManager.white,
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(12),
              bottom: Radius.circular(12),
            ),
            child: Image.asset(image, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Styles.font16Black500Weight),

                verticalSpace(height: 10.h),
                Text(
                  description,
                  style: Styles.font14DarkGray400Weight.copyWith(height: 1.3),
                  textAlign: TextAlign.justify,
                ),

                verticalSpace(height: 8.h),
               
                Align(
                  alignment: Alignment.centerRight,
                  child: ReadMoreButton(
                    text: 'Read more',
                    onPressed: () {
                      
                    },
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
