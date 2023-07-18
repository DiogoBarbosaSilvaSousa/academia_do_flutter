Future<void> main() async {
  print('Início');

  try {
    final id = await buscarId();
    final nome = await buscarNome(id);

    print('O nome é $nome');
    print('Fim');
  } catch (e) {
    print('Aconteceu um erro!!!');
  }
}

Future<int> buscarId() async => 80;
Future<String> buscarNome(int id) async {
  throw Exception();
}
