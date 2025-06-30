import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/home/data/repo/top_doctors_repo.dart';
import 'package:skin_care_app/features/home/logic/cubit/top_doctors_state.dart';

class TopDoctorsCubit extends Cubit<TopDoctorsState> {
  TopDoctorsCubit(this.topDoctorsRepo) : super(const TopDoctorsState.initial());
  final TopDoctorsRepo topDoctorsRepo;

  Future<void> getTopDoctors() async {
    emit(const TopDoctorsState.loading());
    final response = await topDoctorsRepo.getAllDoctors();

    if (isClosed) return;

    response.when(
      success: (doctors) => emit(TopDoctorsState.success(doctors)),
      failure: (apiErrorModel) => emit(TopDoctorsState.error(apiErrorModel)),
    );
  }
}
