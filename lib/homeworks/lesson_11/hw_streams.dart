import 'dart:async';

void main() async {

  // Task 6: Стрім з чисел (fromIterable).

  final Stream<int> numbers = Stream<int>.fromIterable([1, 15, 153, 90, 180, 6, 13, 43, 7, 8]);

  print('Await for output:');
  await for (final int n in numbers) {
    print(n);
  }

  print('\nListen output:');
  numbers.listen((n) {
    print(n);
  });

  //Task 7: Зворотний відлік зі стріму (periodic)

  print('\nPeriodic output:');
  final Stream<int> str = Stream<int>.periodic(Duration(seconds: 1), (x) => x + 1).take(10);
  str.listen((n) {
    print('$n...');
  });

  //Task 8: Робота з StreamController

  final StreamController<String> sc = StreamController<String>();
  print('\nStreamcontroller output:');
  sc
    ..add('Dark side of the Moon')
    ..add('The Wall')
    ..add('Wish You Were Here')
    ..add('Animals')
    ..add('Meddle');

  sc.stream.listen((s) {
    print(s);
  }, onDone: () {
    print('Стрім завершено');
  });

  await sc.close();
}