import 'package:dart_poo/19_extensions/pessoa_saudacao_extension.dart';

import 'pessoa.dart';
import 'saudacao_string_extension.dart';

void main() {
  var nome = 'Rodrigo Rahman';
  print(nome.saudacao());

  var p1 = Pessoa(nome: 'Rodrigo');
  print(p1.saudacao());
}
