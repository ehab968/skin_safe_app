import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/home/data/models/top_doctors_model.dart';
import 'package:skin_care_app/features/home/logic/cubit/top_doctors_cubit.dart';
import 'package:skin_care_app/features/home/logic/cubit/top_doctors_state.dart';
import 'package:skin_care_app/features/home/ui/widgets/doctors_list.dart';
import 'package:skin_care_app/features/home/ui/widgets/doctors_shimmer_loading.dart';

class TopDoctorsBlocBuilder extends StatelessWidget {
  const TopDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopDoctorsCubit, TopDoctorsState>(
      buildWhen:
          (previous, current) =>
              current is TopDoctorsLoading ||
              current is TopDoctorsSuccess ||
              current is TopDoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (doctors) {
            return setupSuccess(doctors);
          },
          error: (apiErrorModel) {
            return Center(
              child: Text(
                'Error: ${apiErrorModel.message}',
                style: const TextStyle(color: Colors.red),
              ),
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupSuccess(List<TopDoctorsModel> doctors) {
    return DoctorsList(doctors: doctors);
  }

  Widget setupLoading() => const DoctorsShimmerLoading();
}
