import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/extensions.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/routing/routes.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/Articles/data/models/article_model.dart';
import 'package:skin_care_app/features/Articles/ui/widgets/read_more_button.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({super.key, required this.article});
  final ArticleModel article;
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
            child: CachedNetworkImage(
              height: 124.h,
              width: double.infinity,
              imageUrl: article.image ?? '',
              placeholder:
                  (context, url) => const Center(
                    child: CircularProgressIndicator(
                      color: ColorManager.primaryBlue,
                    ),
                  ),
              fit: BoxFit.cover,
              errorWidget:
                  (context, url, error) => Image.asset(
                    'assets/images/firstarticlepic.jpg',
                    height: 130.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(article.title!, style: Styles.font16Black500Weight),

                verticalSpace(height: 10.h),
                Text(
                  article.content!,
                  style: Styles.font14DarkGray400Weight.copyWith(height: 1.3),
                  textAlign: TextAlign.justify,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),

                verticalSpace(height: 8.h),

                Align(
                  alignment: Alignment.centerRight,
                  child: ReadMoreButton(
                    text: 'Read more',
                    onPressed: () {
                      context.pushNamed(
                        Routes.ArticleBodyScreen,
                        arguments: article,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
