import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_statenotifier_freezed_article/src/features/random_number/logic/random_number_provider.dart';

///RandomNumber
class RandomNumberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riverpod + StateNotifier + Freezed'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Your random number is:',
            ),
            const SizedBox(height: 10.0),
            const _RandomNumberConsumer()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read(randomNumberNotifierProvider).getRandomNumber,
        tooltip: 'Generate',
        child: Icon(Icons.gesture_outlined),
      ),
    );
  }
}

class _RandomNumberConsumer extends ConsumerWidget {
  const _RandomNumberConsumer();
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(randomNumberNotifierProvider.state);
    return state.when(
      initial: () => Text('Initial State'),
      loading: () => CircularProgressIndicator(),
      data: (generatedNumber) => Text('$generatedNumber'),
      error: (errorMessage) => Text(errorMessage),
    );
  }
}
