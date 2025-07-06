import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/home/data/repo/search_repo.dart';
import 'package:skin_care_app/features/home/data/models/top_doctors_model.dart';
import 'package:skin_care_app/features/home/logic/cubit/search_state.dart';

class RecentSearchCubit extends Cubit<SearchState> {
  final SearchRepo searchRepo;

  RecentSearchCubit(this.searchRepo) : super(const SearchState.initial());

  // Get recent searches
  Future<void> getRecentSearches() async {
    emit(const SearchState.loading());

    final result = await searchRepo.getRecentSearchesAsTopDoctors();

    result.when(
      success: (recentDoctors) {
        emit(SearchState.recentSearchSuccess(recentDoctors));
      },
      failure: (error) {
        emit(
          SearchState.error(error.message ?? 'Failed to get recent searches'),
        );
      },
    );
  }

  // Save doctor to recent searches and refresh
  Future<void> saveToRecentSearch(TopDoctorsModel doctor) async {
    await searchRepo.saveRecentSearch(doctor);
    getRecentSearches(); // Refresh the list
  }

  // Clear recent searches
  Future<void> clearRecentSearches() async {
    await searchRepo.clearRecentSearches();
    getRecentSearches();
  }
}
