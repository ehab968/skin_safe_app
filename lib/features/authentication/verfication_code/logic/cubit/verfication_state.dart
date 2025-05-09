
import 'package:freezed_annotation/freezed_annotation.dart';
part 'verfication_state.freezed.dart';
@freezed
class VerficationState<T> with _$VerficationState<T> {
  const factory VerficationState.initial() = _Initial;
}
