part of 'counter_provider.dart';

class CounterStateNotifier extends StateNotifier<CounterState> {
  CounterStateNotifier() : super(const CounterState.initial());
}
