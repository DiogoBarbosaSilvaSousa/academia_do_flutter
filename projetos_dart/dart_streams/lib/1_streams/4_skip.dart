Future<void> main() async {
  print('Início');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5).skip(2);

  // await for
  await for (var i in stream) {
    print('O numero que chegou no await foi $i');
  }

  print('Fim');
}

int callback(int value) {
  print('O valor é $value');
  return (value + 1) * 2;
}
