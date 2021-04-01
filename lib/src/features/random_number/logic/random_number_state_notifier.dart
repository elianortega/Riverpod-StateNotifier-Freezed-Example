part of 'random_number_provider.dart';

class RandomNumberStateNotifier extends StateNotifier<RandomNumberState> {
  RandomNumberStateNotifier({
    required this.repository,
  }) : super(const RandomNumberState.initial());

  final IRandomNumberRepository repository;

  Future<void> getRandomNumber() async {
    /// Set State to be loading
    state = const RandomNumberState.loading();
    try {
      final randomNumber = await repository.getRandomNumber();

      ///Set state to data with number
      state = RandomNumberState.data(number: randomNumber);
    } catch (e) {
      ///Set state to error with message if error occurred
      state = RandomNumberState.error(
          'Ocurrio un error al generar el numero aleatorio');
    }
  }
}
