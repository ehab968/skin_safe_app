import 'package:flutter/material.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class ArticleTitle extends StatelessWidget {
  final String title;

  const ArticleTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Styles.font16Black500Weight);
  }
}
