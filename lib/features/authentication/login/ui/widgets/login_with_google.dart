import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/features/authentication/login/logic/login_cubit/login_cubit.dart';
import 'package:skin_care_app/features/authentication/login/ui/widgets/google_login_bloclistner.dart';

class LoginWithGoogle extends StatelessWidget {
  const LoginWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const GoogleLoginBloclistner(),

          GestureDetector(
            onTap: () {
              context.read<LoginCubit>().loginWithGoogle();
            },
            child: SvgPicture.asset('assets/svgs/Google.svg'),
          ),
          horizontalSpace(width: 120),
          SvgPicture.asset('assets/svgs/Facebook.svg'),
        ],
      ),
    );
  }
}
