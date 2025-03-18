import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class CustomDropDownFormButton extends StatelessWidget {
  const CustomDropDownFormButton({
    super.key,
    this.hint,
    this.value,
    this.buttonWidth,
    this.buttonHeight,
    this.buttonradius,
    this.buttonPadding,
    this.buttonBorderColor,
    required this.items,
    this.onChanged,
    this.menuWidth,
    this.menuMaxHeight,
    this.menuradius,
    this.menuItemsHeight = 0,
    this.menuItemsPadding,
    this.menuBorderColor,
    this.menuBackgroundColor,
    this.validator,
    this.icon,
    this.focusNode,
  });
  final Widget? hint, icon;
  final dynamic value;
  final double? buttonWidth, buttonHeight, buttonradius;
  final double? menuWidth, menuMaxHeight, menuradius;
  final double menuItemsHeight;
  final EdgeInsetsGeometry? buttonPadding, menuItemsPadding;
  final Color? buttonBorderColor, menuBorderColor, menuBackgroundColor;
  final List<DropdownMenuItem<Object>> items;
  final void Function(Object?)? onChanged;
  final String? Function(Object?)? validator;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      child: DropdownButtonFormField2(
        validator: validator,
        focusNode: focusNode,
        onChanged: onChanged,
        value: value,
        hint: hint,
        isDense: true,
        decoration: const InputDecoration(
          // =>  عشان بنتحكم بالبوتون ديكوريشن
          contentPadding: EdgeInsets.zero,
          border: InputBorder.none,
        ),

        //  =>button
        buttonStyleData: ButtonStyleData(
          padding: buttonPadding,
          width: buttonWidth,
          height: buttonHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(buttonradius ?? 0),
            border: Border.all(color: buttonBorderColor ?? Colors.black),
          ),
        ),

        //  =>menu
        dropdownStyleData: DropdownStyleData(
          width: menuWidth,
          maxHeight: menuMaxHeight,
          decoration: BoxDecoration(
            color: menuBackgroundColor,
            borderRadius: BorderRadius.circular(menuradius ?? 0),
            border: Border.all(color: menuBorderColor ?? Colors.black),
          ),
        ),

        //  => menu items
        menuItemStyleData: MenuItemStyleData(
          padding: menuItemsPadding,
          height: menuItemsHeight,
        ),

        //  => icon
        iconStyleData: IconStyleData(
          icon: icon ?? const Icon(Icons.arrow_drop_down),
        ),
        items: items,
      ),
    );
  }
}

// items
//     .map(
//       (String item) => DropdownMenuItem<String>(
//         value: item,
//         child: Text(
//           item,
//           style: Styles.font14darkGray500Weight,
//         ),
//       ),
//     )
//     .toList(),
