Future<void> main() async {
  print('Início');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5).skipWhile((numero) {
    print('Número que chegou na stream skipWhile $numero');
    return numero < 5;
  });

  // await for
  await for (var i in stream) {
    print('O numero que chegou no await foi $i');
  }

  print('Fim');
}

int callback(int value) {
  print('Callback o valor é $value');
  return (value + 1) * 2;
}
