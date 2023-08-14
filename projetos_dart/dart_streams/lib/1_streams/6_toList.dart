Future<void> main() async {
  print('Início');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5);

  final data = await stream.toList();

  print(data);

  print('Fim');
}

int callback(int value) {
  print('Callback o valor é $value');
  return (value + 1) * 2;
}
