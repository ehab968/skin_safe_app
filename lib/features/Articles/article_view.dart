import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/features/Articles/ui/widgets/article_card_widget.dart';
import 'package:skin_care_app/features/Articles/ui/widgets/article_model.dart';

class ArticlesPage extends StatelessWidget {
  final List<Article> articles = [
    Article(
    
      title: "Sun Exposure and skin cancer",
      description: "Exposure to ultraviolet (UV) radiation from the sun is a well-established risk factor for developing skin cancer. UV radiation damages the DNA in skin cells" ,
      image: "assets/images/firstarticlepic.jpg",
    ),
    Article(
     
      title: "New vaccination to prevent skin cancer",
      description: "Recent advancements in medical research have led to the development of personalized mRNA vaccines aimed at preventing the recurrence of melanoma",
      image: "assets/images/secondarticlepic.jpg",
    ),
    Article(
      
      title: "How to protect yourself from skin cancer",
      description: "Protecting yourself from skin cancer involves adopting comprehensive sun safety practices and being vigilant about skin changes by choosing the right sunscreen and applying it generously",
      image: "assets/images/thirdarticlepic.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: 3,
        onTap: (index) => navigateToTab(context, index),
      ),
      appBar: AppBar( automaticallyImplyLeading: false,
        title:  Text("Articles", style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w600 ),),
      backgroundColor:ColorManager.white ,),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return ArticleCard(
            image: article.image,
            title: article.title,
            description: article.description,
            onTap: () {
              // Navigate to detail or do something
            },
          );
        },
      ),
    );
  }
}
