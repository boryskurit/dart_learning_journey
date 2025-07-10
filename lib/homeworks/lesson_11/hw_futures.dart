import 'dart:async';
import 'dart:ffi';


// Task 1: Асинхронне отримання імені
Future<String> fetchName() async {
  return  Future<String>.delayed(Duration(seconds: 2), () {
    return "Borys";
  });
}

//Task 2: Асинхронне отримання віку
Future<String> fetchAge() async {
  return Future<String>.delayed(Duration(microseconds: 1500), () {
    return "53";
  });
}

const y1 = 'рік';
const y2 = 'роки';
const y5 = 'років';

const List<String> endings = [y5, y1, y2, y2, y2, y5, y5, y5, y5, y5];

//Task 3: Послідовне виконання Future
Future<int> measureExecutionTime(Future<String> Function() task1, Future<String> Function() task2) async {
  final w = Stopwatch()..start();
  await task1().then((_) async => await task2());
  w.stop();
  return w.elapsedMilliseconds;
}

//Task 4: Паралельне виконання Future (Future.wai
Future<int> measureExecutionTimeParallel(List<Future<String>> ft) async {
  final w = Stopwatch()..start();
  await Future.wait(ft);
  w.stop();
  return w.elapsedMilliseconds;
}

//Task 5: Зворотний відлік з затримкою
Future<String> delayedCountdown(int seconds) async {
  for (int i = seconds; i > 0; i--) {
    await Future.delayed(Duration(seconds: 1));
    print('${i}... ');
  }

  return 'Старт!';
}

void main() async {
  final age = await fetchAge();
  print('Мене звати ${await fetchName()}');
  print('Мені ${age} ${endings[int.parse(age) % 10]}');
  print('Час послідовного виконання обох методів: ${await measureExecutionTime(fetchName, fetchAge)} мс');
  print('Час паралельного виконання обох методів: ${await measureExecutionTimeParallel([fetchName(), fetchAge()])} мс');
  print(await delayedCountdown(10));
}