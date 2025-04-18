import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/widgets/certficate_list_view.dart';

class CertficateSection extends StatelessWidget {
  const CertficateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Certificate', style: Styles.font16Black500Weight),
        verticalSpace(height: 8),
        const CertficateListView(),
        verticalSpace(height: 100),
      ],
    );
  }
}
