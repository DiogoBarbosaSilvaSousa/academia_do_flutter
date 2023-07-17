void main() {
  func1().then((value) {
    func2(value).then((value) => print('1: $value'));
  });

  func1().then((value) => func2(value)).then((value) => print('2: $value'));

  var fut1 = func1();
  var fut2 = fut1.then((value) => func2(value));
  fut2.then((value) => print('3: $value'));

  print(fut1.hashCode);
  print(fut2.hashCode);
}

Future<String> func1() {
  return Future.delayed(Duration(seconds: 1), () => 'Parâmetro 1');
}

Future<String> func2(String parametro) {
  return Future.value('Parâmetro recebido e processado: $parametro');
}
