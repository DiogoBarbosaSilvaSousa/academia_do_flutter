import 'pessoa.dart';

void main() {
  var pessoa = Pessoa(nome: 'Rodrigo Rahaman', idade: 38, sexo: 'Masculino');
  print(pessoa.nome);

  var pessoaNomeado = Pessoa.semNome(idade: 38, sexo: 'Masculino');
  print(pessoaNomeado.idade);

  var pessoaFabrica = Pessoa.fabrica('Rodrigo Rahman');
  print(pessoaFabrica.nome);
}
