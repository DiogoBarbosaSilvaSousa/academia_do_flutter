import 'cliente.dart';

late final String nome;

//Tome muito cuidado com o
// Late e o ! (Force Non NUll)
void main() {
  var cliente = Cliente(nome: 'Rodrigo');
  cliente.nome = 'Rodrigo';
  print(cliente.nome);
  // cliente.nome = 'Almeida';
  print(cliente.nome);

  if (cliente.idade != null) {
    print(cliente.idade!.toLowerCase());
  }

  nome = 'Rodrigo R';
  print(nome);
  nome = 'Rahman';
}
