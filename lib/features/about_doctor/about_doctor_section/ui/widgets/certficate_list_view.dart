import 'package:flutter/material.dart';
import 'package:skin_care_app/features/about_doctor/about_doctor_section/ui/widgets/certificate_item.dart';

class CertficateListView extends StatelessWidget {
  const CertficateListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 0),
      itemCount: 5,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: CertificateItem(),
        );
      },
    );
  }
}
