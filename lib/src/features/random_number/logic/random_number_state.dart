import 'package:freezed_annotation/freezed_annotation.dart';

part 'random_number_state.freezed.dart';

@freezed
abstract class RandomNumberState with _$RandomNumberState {
  /// Initial State
  const factory RandomNumberState.initial() = _Initial;

  /// Loading State
  const factory RandomNumberState.loading() = _Loading;

  ///Data State
  const factory RandomNumberState.data({
    required int number,
  }) = _Data;

  /// Loading State
  const factory RandomNumberState.error([@Default('') String errorMessage]) =
      _Error;
}
