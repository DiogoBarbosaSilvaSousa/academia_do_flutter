void main() {
  Future(() {
    return 'Valor x';
  }); // -> Incompleto vai ser executado ainda!!!

  Future.value(''); // -> Sucesso
  Future.error(''); // -> Erro
}

Future<String> func1() {
  return Future.value('Qualquer Valor de sucesso');
}

Future<String> func2() async {
  return 'Qualquer Valor de sucesso';
}
