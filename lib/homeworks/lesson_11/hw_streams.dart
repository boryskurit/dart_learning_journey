// Task 6: Стрім з чисел (fromIterable)

import 'dart:async';

void main() async {

  // Task 6: Стрім з чисел (fromIterable)
  final Stream<int> numbers = Stream<int>.fromIterable([1, 15, 153, 90, 180, 6, 13, 43, 7, 8]);

  print('Await for output:');
  await for (final int n in numbers) {
    print(n);
  }

  print('\nListen output:');
  numbers.listen((n) {
    print(n);
  });
}