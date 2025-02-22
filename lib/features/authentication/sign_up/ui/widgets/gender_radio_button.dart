import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/app_validator.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';

class GenderRadioButtons extends StatelessWidget {
  const GenderRadioButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gender',
          style: Styles.font16Black400Weight,
        ),
        SizedBox(
          width: double.infinity,
          child: FormBuilderRadioGroup(
            validator: AppValidators.validateEmpty,
            activeColor: ColorManager.primaryBlue,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            wrapSpacing: 85.w,
            
            name: 'Gender',
            options: [
              FormBuilderFieldOption(
                value: "male",
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    "Male",
                    style: Styles.font14darkGray400Weight,
                  ),
                ),
              ),
              FormBuilderFieldOption(
                value: "female",
                child: Text(
                  "Female",
                  style: Styles.font14darkGray400Weight,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
