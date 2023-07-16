class Pessoa {
  String? _nome;

  String? get nome => _nome;
  set nome(String? nome) {
    if (nome != null && nome.length > 3) {
      _nome = nome;
    }
  }
}
