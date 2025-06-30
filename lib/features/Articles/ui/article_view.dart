import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/features/Articles/ui/widgets/article_bloc_builder.dart';

class ArticlesView extends StatelessWidget {
  const ArticlesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: 3,
        onTap: (index) => navigateToTab(context, index),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Articles",
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
        ),
        backgroundColor: ColorManager.white,
      ),
      body: const ArticleBlocBuilder(),
    );
  }
}
