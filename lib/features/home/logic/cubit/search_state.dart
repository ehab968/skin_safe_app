import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skin_care_app/features/home/data/models/top_doctors_model.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState<T> with _$SearchState<T> {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = Loading;
  const factory SearchState.searchSuccess(List<TopDoctorsModel> doctors) =
      SearchSuccess;
  const factory SearchState.recentSearchSuccess(
    List<TopDoctorsModel> recentDoctors,
  ) = RecentSearchSuccess;
  const factory SearchState.error(String error) = Error;
}
