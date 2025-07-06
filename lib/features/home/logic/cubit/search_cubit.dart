import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/home/data/repo/search_repo.dart';
import 'package:skin_care_app/features/home/data/models/top_doctors_model.dart';
import 'package:skin_care_app/features/home/logic/cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo searchRepo;
  final TextEditingController searchController = TextEditingController();

  SearchCubit(this.searchRepo) : super(const SearchState.initial());

  // Initialize with all doctors data
  void initializeWithDoctors(List<TopDoctorsModel> doctors) {
    print('SearchCubit: Initializing with ${doctors.length} doctors');
    searchRepo.setAllDoctors(doctors);
    getRecentSearches();
  }

  // Search doctors
  Future<void> searchDoctors(String query) async {
    print('SearchCubit: Searching for "$query"');

    if (query.isEmpty) {
      getRecentSearches();
      return;
    }

    emit(const SearchState.loading());

    final result = await searchRepo.searchDoctors(query);

    result.when(
      success: (doctors) {
        print(
          'SearchCubit: Search successful, found ${doctors.length} doctors',
        );
        emit(SearchState.searchSuccess(doctors));
        // Don't call getRecentSearches() here as it will overwrite search results
      },
      failure: (error) {
        print('SearchCubit: Search failed: ${error.message}');
        emit(SearchState.error(error.message ?? 'Failed to search doctors'));
      },
    );
  }

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

  // Save doctor to recent searches
  Future<void> saveToRecentSearch(TopDoctorsModel doctor) async {
    await searchRepo.saveRecentSearch(doctor);
    // Don't call getRecentSearches() here to avoid conflicts with search results
  }

  // Clear recent searches
  Future<void> clearRecentSearches() async {
    await searchRepo.clearRecentSearches();
    getRecentSearches();
  }

  // Handle search input changes
  void onSearchChanged(String query) {
    searchDoctors(query);
  }

  // Clear search
  void clearSearch() {
    searchController.clear();
    getRecentSearches();
  }

  @override
  Future<void> close() {
    searchController.dispose();
    return super.close();
  }
}
