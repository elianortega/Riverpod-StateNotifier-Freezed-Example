import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_state.freezed.dart';

@freezed
abstract class CounterState with _$CounterState {
  /// Initial State
  const factory CounterState.initial() = _Initial;

  /// Loading State
  const factory CounterState.loading() = _Loading;

  ///Data State
  const factory CounterState.data({
    required int number,
  }) = _Data;

  /// Loading State
  const factory CounterState.error([@Default('') String errorMessage]) = _Error;
}
