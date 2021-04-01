import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'random_number_state.dart';

import '../repository/random_number_repository.dart';
part 'random_number_state_notifier.dart';

///Repository
final _randomRepositoryProvider = Provider<IRandomNumberRepository>(
  (ref) => RandomNumberRepository(),
);

/// StateNotifierProvider
final randomNumberNotifierProvider =
    StateNotifierProvider<RandomNumberStateNotifier>(
  (ref) => RandomNumberStateNotifier(
    repository: ref.watch(_randomRepositoryProvider),
  ),
);
