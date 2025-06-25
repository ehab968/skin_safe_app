import 'package:flutter/material.dart';
import 'package:skin_care_app/features/Articles/data/models/article_model.dart';
import 'package:skin_care_app/features/Articles/ui/widgets/article_card_widget.dart';

class ArticleListView extends StatelessWidget {
  const ArticleListView({super.key, required this.articles});
  final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return ArticleCard(article: articles[index]);
      },
    );
  }
}
