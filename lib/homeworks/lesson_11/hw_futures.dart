import 'dart:async';

Future<String> fetchName() async {
  return  Future<String>.delayed(Duration(seconds: 2), () {
    return "Borys";
  });
}

void main() async {
  print('Мене звати ${await fetchName()}');
}