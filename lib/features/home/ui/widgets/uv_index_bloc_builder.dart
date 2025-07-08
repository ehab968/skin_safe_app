import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/home/logic/cubit/uv_index_cubit.dart';
import 'package:skin_care_app/features/home/logic/cubit/uv_index_state.dart';
import 'package:skin_care_app/features/Home/ui/widgets/uv_index.dart';
import 'package:skin_care_app/features/home/ui/widgets/uv_index_shimmer_loading.dart';

class UVIndexBlocBuilder extends StatelessWidget {
  const UVIndexBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UVIndexCubit, UVIndexState>(
      buildWhen:
          (previous, current) =>
              current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const UVIndexShimmerLoading(),
          success: (uvIndexData) => UvIndex(uvIndexData: uvIndexData),
          error: (error) => UvIndex.withError(error: error),
          orElse: () => const UVIndexShimmerLoading(),
        );
      },
    );
  }
}
