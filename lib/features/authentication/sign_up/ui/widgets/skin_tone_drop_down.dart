import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/app_validator.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/authentication/sign_up/logic/sign_up_cubit/sign_up_cubit.dart';

class SkinToneDropDown extends StatefulWidget {
  const SkinToneDropDown({super.key});

  @override
  State<SkinToneDropDown> createState() => _SkinToneDropDownState();
}

class _SkinToneDropDownState extends State<SkinToneDropDown> {
  String? selectedValue;
  bool isFocused = false;
  final FocusNode focusNode = FocusNode();

  final List<String> items = <String>[
    'light',
    'light to medium',
    'medium',
    'medium to dark',
    'dark',
  ];
  @override
  void initState() {
    focusNode.addListener(() {
      setState(() {
        isFocused = focusNode.hasFocus;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Skin Tone', style: Styles.font16Black400Weight),
        verticalSpace(height: 8),
        SizedBox(
          width: 254.w,
          child: DropdownButtonFormField2(
            focusNode: focusNode,
            validator: AppValidators.validateEmpty,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            value: selectedValue,
            hint: Text('Select option', style: Styles.font14darkGray500Weight),
            isExpanded: true,
            isDense: true,
            decoration: const InputDecoration(
              hoverColor: Colors.blue,
              contentPadding: EdgeInsets.zero,
              border: InputBorder.none,
            ),
            buttonStyleData: ButtonStyleData(
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              padding: EdgeInsets.only(left: 16.w, right: 8.w),
              width: 254.w,
              height: 30.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black),
              ),
            ),
            dropdownStyleData: DropdownStyleData(
              width: 254.w,
              maxHeight: 170.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black),
              ),
            ),
            menuItemStyleData: MenuItemStyleData(
              padding: EdgeInsets.only(left: 16.w),
              height: 30.h,
            ),
            iconStyleData: IconStyleData(
              icon:
                  isFocused
                      ? const Icon(Icons.arrow_drop_up)
                      : const Icon(Icons.arrow_drop_down),
            ),
            items:
                items
                    .map(
                      (String item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: Styles.font14darkGray500Weight,
                        ),
                      ),
                    )
                    .toList(),
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
              context.read<SignUpCubit>().skinToneController.text = value!;
            },
          ),
        ),
      ],
    );
  }
}
