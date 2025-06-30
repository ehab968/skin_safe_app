import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/Articles/ui/widgets/read_more_button.dart';

class ArticleShimmerLoading extends StatelessWidget {
  const ArticleShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Card(
            elevation: 0,
            color: ColorManager.white,
            margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            child: Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12),
                      bottom: Radius.circular(12),
                    ),
                    child: Image.asset(
                      'assets/images/firstarticlepic.jpg',
                      height: 124.h,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ultraviolet radiation and skin cancer',
                          style: Styles.font16Black500Weight,
                        ),

                        verticalSpace(height: 10.h),
                        Text(
                          'ssdjfsofjsojsfvjlksdjvdsvjssdjfsofjsojsfvjlksdjvdsvjssdjfsofjsojsfvjlksdjvdsvjssdjfsofjsojsfvjlksdjvdsvjssdjfsofjsojsfvjlksdjvdsvjssdjfsofjsojsfvjlksdjvdsvjssdjfsofjsojsfvjlksdjvdsvjssdjfsofjsojsfvjlksdjvdsvjssdjfsofjsojsfvjlksdjvdsvjssdjfsofjsojsfvjlksdjvdsvjssdjfsofjsojsfvjlksdjvdsvjssdjfsofjsojsfvjlksdjvdsvj',
                          style: Styles.font14DarkGray400Weight.copyWith(
                            height: 1.3,
                          ),
                          textAlign: TextAlign.justify,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),

                        verticalSpace(height: 8.h),

                        Align(
                          alignment: Alignment.centerRight,
                          child: ReadMoreButton(
                            text: 'Read more',
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
