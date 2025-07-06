import 'dart:convert';
import 'package:skin_care_app/core/helper/shared_pref_helper.dart';
import 'package:skin_care_app/core/networking/api_error_handler.dart';
import 'package:skin_care_app/core/networking/api_result.dart';
import 'package:skin_care_app/features/home/data/models/recent_search_model.dart';
import 'package:skin_care_app/features/home/data/models/top_doctors_model.dart';

class SearchRepo {
  static const String _recentSearchesKey = 'recent_searches';
  static const int _maxRecentSearches = 5;

  // Get all doctors (from top doctors for search)
  List<TopDoctorsModel> _allDoctors = [];

  void setAllDoctors(List<TopDoctorsModel> doctors) {
    _allDoctors = doctors;
  }

  // Search doctors locally
  Future<ApiResult<List<TopDoctorsModel>>> searchDoctors(String query) async {
    try {
      if (query.isEmpty) {
        return ApiResult.success(_allDoctors);
      }

      final filteredDoctors =
          _allDoctors.where((doctor) {
            final fullName = doctor.fullName.toLowerCase();
            final specialty = doctor.specialty?.toLowerCase() ?? '';
            final searchQuery = query.toLowerCase();

            return fullName.contains(searchQuery) ||
                specialty.contains(searchQuery);
          }).toList();

      return ApiResult.success(filteredDoctors);
    } catch (e) {
      return ApiResult.failure(
        ApiErrorHandler.handle(Exception('Failed to search doctors')),
      );
    }
  }

  // Save recent search
  Future<void> saveRecentSearch(TopDoctorsModel doctor) async {
    try {
      final recentSearches = await getRecentSearches();

      final newSearch = RecentSearchModel.fromDoctorModel(
        id: doctor.id ?? '',
        name: doctor.fullName,
        specialty: doctor.specialty ?? '',
        ratingsAverage: doctor.ratingsAverage ?? 0.0,
        image: doctor.image,
      );

      // Remove if already exists (to avoid duplicates)
      recentSearches.removeWhere((search) => search.id == newSearch.id);

      // Add to beginning
      recentSearches.insert(0, newSearch);

      // Keep only max recent searches
      if (recentSearches.length > _maxRecentSearches) {
        recentSearches.removeRange(_maxRecentSearches, recentSearches.length);
      }

      // Save to shared preferences
      final jsonList = recentSearches.map((search) => search.toJson()).toList();
      await SharedPrefHelper.setData(_recentSearchesKey, jsonEncode(jsonList));
    } catch (e) {
      // Handle error silently or log it
      print('Error saving recent search: $e');
    }
  }

  // Get recent searches
  Future<List<RecentSearchModel>> getRecentSearches() async {
    try {
      final jsonString = await SharedPrefHelper.getString(_recentSearchesKey);
      if (jsonString.isEmpty) {
        return [];
      }

      final List<dynamic> jsonList = jsonDecode(jsonString);
      return jsonList.map((json) => RecentSearchModel.fromJson(json)).toList();
    } catch (e) {
      // Return empty list if error
      return [];
    }
  }

  // Clear recent searches
  Future<void> clearRecentSearches() async {
    try {
      await SharedPrefHelper.removeData(_recentSearchesKey);
    } catch (e) {
      // Handle error silently
      print('Error clearing recent searches: $e');
    }
  }

  // Get recent searches as TopDoctorsModel for compatibility
  Future<ApiResult<List<TopDoctorsModel>>>
  getRecentSearchesAsTopDoctors() async {
    try {
      final recentSearches = await getRecentSearches();

      // Convert RecentSearchModel to TopDoctorsModel
      final topDoctors =
          recentSearches.map((search) {
            return TopDoctorsModel(
              id: search.id,
              firstName: search.name.split(' ').first,
              secondName:
                  search.name.split(' ').length > 1
                      ? search.name.split(' ').sublist(1).join(' ')
                      : '',
              specialty: search.specialty,
              ratingsAverage: search.ratingsAverage,
              image: search.image,
            );
          }).toList();

      return ApiResult.success(topDoctors);
    } catch (e) {
      return ApiResult.failure(
        ApiErrorHandler.handle(Exception('Failed to get recent searches')),
      );
    }
  }
}
