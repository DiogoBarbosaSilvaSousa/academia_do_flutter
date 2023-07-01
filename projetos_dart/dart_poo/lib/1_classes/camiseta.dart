// Modificadores
// Public (Público)
// Private (Privado)
// Não há "Protected (Protegido)" na linguagem Dart

// Características (Atributos)
// Comportamentos (Métodos)
class Camiseta {
  // Atributos
  String? tamanho;
  String? _cor;
  String? marca;

  // Atributo de Classe
  static const String nome = 'Camiseta';

  // Método de classe
  static String recuperarNome() => nome;

  String? get cor => _cor;
  set cor(String? cor) {
    if (cor == 'Verde') {
      throw Exception('Não pode ser Verde');
    }
  }

  // Métodos
  String tipoDeLavagem() {
    if (marca == 'Nike') {
      return 'Não Pode lavar na máquina.';
    } else {
      return 'Pode lavar na máquina';
    }
  }
}
