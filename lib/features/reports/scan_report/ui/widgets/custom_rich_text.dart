import 'package:flutter/material.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key,
    required this.textName1,
    this.textStyle1,
    required this.textName2,
    this.textStyle2,
  });
  final String textName1;
  final TextStyle? textStyle1;
  final String textName2;
  final TextStyle? textStyle2;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: textName1,
        style: textStyle1 ?? Styles.font15Black400Weight,
        children: [
          TextSpan(
            text: textName2,
            style: textStyle2 ?? Styles.font15darkGray400Weight,
          ),
        ],
      ),
    );
  }
}
