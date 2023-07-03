class Cliente {
  late final String nome;
  String? idade;

  Cliente({required String nome});
  //Cliente({required this.nome});

  Cliente.comNome({required String nome}) {
    nome = nome;
  }
}
