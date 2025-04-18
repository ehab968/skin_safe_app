import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skin_care_app/core/helper/spacing.dart';

class LoginWithGoogle extends StatelessWidget {
  const LoginWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/svgs/Google.svg'),
          horizontalSpace(width: 120),
          SvgPicture.asset('assets/svgs/Facebook.svg'),
        ],
      ),
    );
  }
}
