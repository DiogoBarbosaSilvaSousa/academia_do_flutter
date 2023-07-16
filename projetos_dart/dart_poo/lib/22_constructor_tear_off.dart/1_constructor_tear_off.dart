import 'pessoa.dart';

void main() {
  final nomes = ['Rodrigo', 'Guilherme', 'Renato', 'Sandra'];

  //final pessoas = nomes.map((nome) => Pessoa(nome)).toList();

  //final pessoas = nomes.map<Pessoa>(Pessoa.nome).toList();
  final pessoas = nomes.map<Pessoa>(Pessoa.new).toList();

  for (var pessoa in pessoas) {
    print('Olá ${pessoa.nome}');
  }

  //funcaoQualquer((String nome) {});
  funcaoQualquer(Pessoa.new);
}

void funcaoQualquer(void Function(String) funcao) {
  funcao('Rodrigo');
}
