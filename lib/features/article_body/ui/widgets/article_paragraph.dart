import 'package:flutter/material.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class ArticleParagraph extends StatelessWidget {
  final String bodyText;

  const ArticleParagraph({super.key, required this.bodyText});

  @override
  Widget build(BuildContext context) {
    // نقسم النص لكلمات أو جمل بين Bold و Normal
    final List<InlineSpan> spans = [];

    final regex = RegExp(r"\*\*(.*?)\*\*"); // أي حاجة بين ** **

    final matches = regex.allMatches(bodyText);

    int lastIndex = 0;

    for (final match in matches) {
      // النص العادي قبل الكلمة البولد
      if (match.start > lastIndex) {
        spans.add(TextSpan(
          text: bodyText.substring(lastIndex, match.start),
          style: Styles.font14DarkGray400Weight,
        ));
      }

      // الكلمة اللي جوه **
      final boldText = match.group(1);
      spans.add(TextSpan(
        text: boldText,
        style: Styles.font14DarkGray400Weight.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ));

      lastIndex = match.end;
    }

    // النص اللي بعد آخر كلمة بولد
    if (lastIndex < bodyText.length) {
      spans.add(TextSpan(
        text: bodyText.substring(lastIndex),
        style: Styles.font14DarkGray400Weight,
      ));
    }

    return RichText(
      text: TextSpan(children: spans),
    );
  }
}
