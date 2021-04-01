part of 'random_number_provider.dart';

class RandomNumberStateNotifier extends StateNotifier<RandomNumberState> {
  RandomNumberStateNotifier({
    required this.repository,
  }) : super(const RandomNumberState.initial());

  final IRandomNumberRepository repository;

  Future<void> getRandomNumber() async {
    /// Set State to be loading
    state = const RandomNumberState.loading();

    /// Simulates API call waiting
    await Future.delayed(const Duration(seconds: 2));

    try {
      final randomNumber = await repository.getRandomNumber();

      ///Set state to data with the generated random number as param
      state = RandomNumberState.data(number: randomNumber);
    } catch (e) {
      state = RandomNumberState.error(
          'Ocurrio un error al generar el numero aleatorio');
    }
  }
}
