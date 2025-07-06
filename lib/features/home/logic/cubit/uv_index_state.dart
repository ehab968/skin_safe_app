import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skin_care_app/features/home/data/models/uv_index_model.dart';

part 'uv_index_state.freezed.dart';

@freezed
class UVIndexState<T> with _$UVIndexState<T> {
  const factory UVIndexState.initial() = _Initial;
  const factory UVIndexState.loading() = Loading;
  const factory UVIndexState.success(UVIndexData uvIndexData) = Success;
  const factory UVIndexState.error(String error) = Error;
}
