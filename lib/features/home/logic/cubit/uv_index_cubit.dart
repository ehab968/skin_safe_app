import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/home/data/repo/uv_index_repo.dart';
import 'package:skin_care_app/features/home/logic/cubit/uv_index_state.dart';

class UVIndexCubit extends Cubit<UVIndexState> {
  final UVIndexRepo uvIndexRepo;

  UVIndexCubit(this.uvIndexRepo) : super(const UVIndexState.initial());

  Future<void> getUVIndex({
    required double latitude,
    required double longitude,
  }) async {
    emit(const UVIndexState.loading());

    final result = await uvIndexRepo.getUVIndex(
      latitude: latitude,
      longitude: longitude,
    );

    result.when(
      success: (uvIndexData) {
        emit(UVIndexState.success(uvIndexData));
      },
      failure: (error) {
        emit(UVIndexState.error(error.message ?? 'Failed to fetch UV index'));
      },
    );
  }
}
