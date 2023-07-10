import 'pessoa.dart';

void main() {
  var p1 =
      Pessoa(nome: 'Rodrigo', email: 'rodrigorahman@academiadoflutter.com');
  var p2 =
      Pessoa(nome: 'Rodrigo', email: 'rodrigorahman@academiadoflutter.com');

  print(p1.hashCode);
  print(p2.hashCode);

  if (p1 == p2) {
    print('É igual');
  } else {
    print('Não é igual');
  }

  // Alteramos a implementação do toString na classe Pessoa
  print(p1);
  print(p2);
}

/**
 * 1 - p1 = Pessoa()
 * 2 - p2 = Pessoa()
 */