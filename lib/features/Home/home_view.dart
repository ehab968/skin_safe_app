import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:skin_care_app/core/theme/styles.dart';
import 'package:skin_care_app/features/Home/ui/widgets/doctors_list.dart';
import 'package:skin_care_app/features/Home/ui/widgets/home_view_body.dart';
import 'package:skin_care_app/features/Home/ui/widgets/uv_index.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
     body: HomeViewBody(),
     
    );
  }
}
