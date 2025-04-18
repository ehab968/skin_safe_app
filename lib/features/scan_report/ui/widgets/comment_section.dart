import 'package:flutter/material.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class CommentSection extends StatelessWidget {
  const CommentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Comments', style: Styles.font16Black500Weight),
        verticalSpace(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(
            'You should visit a dermatologist specialized in skin cancer, you should do imaging (CT/MRI/PET) every 3-6 months based on disease stage',
            style: Styles.font15Black400Weight,
          ),
        ),
      ],
    );
  }
}
