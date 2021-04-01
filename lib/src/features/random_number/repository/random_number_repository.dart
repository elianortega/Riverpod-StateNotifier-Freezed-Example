import 'dart:math';

abstract class IRandomNumberRepository {
  Future<int> getRandomNumber();
}

class RandomNumberRepository implements IRandomNumberRepository {
  @override
  Future<int> getRandomNumber() async {
    /// Simulates API call waiting
    await Future.delayed(const Duration(seconds: 2));

    final random = Random();
    final number = random.nextInt(100000);
    if (number % 2 == 0) {
      throw Exception();
    }
    return number;
  }
}
