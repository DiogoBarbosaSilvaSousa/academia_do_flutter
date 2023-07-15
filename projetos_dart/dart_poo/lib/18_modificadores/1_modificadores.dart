import 'pessoa.dart';

void main() {
  var p1 = const Pessoa(nome: 'Rodrigo', idade: 37);
  var p2 = const Pessoa(nome: 'Rodrigo', idade: 37);
  var p3 = const Pessoa(nome: 'Rodrigo', idade: 37);

  print(p1 == p2);
  print(p1 == p3);
}

/*
1 - p1 = Pessoa(...)
2 - p2 = Pessoa(...)

1 - p1 - const Pessoa(...)
2 - p2 - const Pessoa(...)
*/