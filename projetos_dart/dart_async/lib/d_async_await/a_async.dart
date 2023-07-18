void main() {
  final nome = metodoAssincronoSemAsync();
  final nome2 = metodoAssincrono();
  print(nome2);

  nome
      .then(
        (value) => print(value),
      )
      .catchError(print);

  metodoAssincronoVoid().whenComplete(() => print('Finalizou o void'));
}

Future<String> metodoAssincronoSemAsync() {
  return Future.value('Rodrigo Rahman');
}

Future<String> metodoAssincrono() async {
  return 'Rodrigo Rahman';
}

Future<void> metodoAssincronoVoid() async {}
