import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class CertficateSection extends StatelessWidget {
  const CertficateSection({super.key, required this.certficateDetails});
  final String certficateDetails;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Certificate', style: Styles.font16Black500Weight),
        verticalSpace(height: 8),
        Text(certficateDetails, style: Styles.font14darkGray400Weight),
        verticalSpace(height: 100),
      ],
    );
  }
}
