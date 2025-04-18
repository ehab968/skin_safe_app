import 'package:flutter/material.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class CertificateItem extends StatelessWidget {
  const CertificateItem({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Broad-Certified Dermatologist:- ',
        style: Styles.font14Black400Weight,
        children: [
          TextSpan(
            text: 'Egyptian Medical Syndicate',
            style: Styles.font14darkGray400Weight,
          ),
        ],
      ),
    );
  }
}
