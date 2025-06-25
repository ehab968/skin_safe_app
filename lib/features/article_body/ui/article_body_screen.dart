import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/features/Articles/data/models/article_model.dart';
import 'package:skin_care_app/features/article_body/ui/widgets/article_image.dart';
import 'package:skin_care_app/features/article_body/ui/widgets/article_paragraph.dart';
import 'package:skin_care_app/features/article_body/ui/widgets/article_title.dart';

class ArticleBodyScreen extends StatelessWidget {
  const ArticleBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as ArticleModel;
    return Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: null,
        onTap: (index) => navigateToTab(context, index),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            ArticleImage(image: article.image ?? ''),
            verticalSpace(height: 12.h),
            ArticleTitle(title: article.title ?? ''),
            verticalSpace(height: 12.h),
            ArticleParagraph(bodyText: article.content ?? ''),
          ],
        ),
      ),
    );
  }
}
