import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/core/widgets/custom_text_button.dart';
import 'package:skin_care_app/features/authentication/verfication_code/ui/widgets/verfication_bloc_listner.dart';
import 'package:skin_care_app/features/authentication/widgets/custom_pin_text_field.dart';
import 'package:skin_care_app/features/authentication/verfication_code/logic/cubit/verfication_cubit.dart';

class VerficationCodePinAndButton extends StatelessWidget {
  const VerficationCodePinAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<VerficationCubit>().formKey,
      child: Column(
        children: [
          CustomPinTextField(
            controller:
                context.read<VerficationCubit>().verficationCodeController,
          ),
          verticalSpace(height: 32),
          const VerficationBlocListner(),
          CustomTextButton(
            textName: 'Verify Code',
            backgroundColor: ColorManager.primaryBlue,
            height: 48.h,
            width: double.infinity,
            textStyle: Styles.font16White500Weight,
            onPressed: () {
              validateThenDoVerfication(context);
            },
          ),
        ],
      ),
    );
  }
}

void validateThenDoVerfication(BuildContext context) {
  if (context.read<VerficationCubit>().formKey.currentState!.validate()) {
    context.read<VerficationCubit>().doVerfication();
  }
}
