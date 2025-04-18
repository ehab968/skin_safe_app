import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class PersonalInfo extends StatelessWidget {
  final String label;
  final String value;
 

  const PersonalInfo({
    super.key,
    required this.label,
    required this.value,
    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 125.w,
            child: Text(
              label,
              style:  Styles.font16Black400Weight,
            ),
          ),
          Expanded(
            child:
              Text(
                      value,
                      style:  Styles.font16Gray400Weight
                    ),
          ),
        ],
      ),
    );
  }
}
