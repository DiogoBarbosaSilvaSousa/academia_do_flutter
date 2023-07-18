void main() {
  print('Init Main');

  Future<String>(() => 'Future Normal').then(print);
  Future<String>.microtask(() => Future.error('Erro ao executar'))
      .then(print)
      .catchError(print);

  print('End Main');
}
