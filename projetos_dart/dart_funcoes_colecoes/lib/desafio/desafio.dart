import 'package:dart_funcoes_colecoes/helpers/uteis.dart';

void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  var novaListaPessoas = [...pessoas];
  var listaSemNomesDuplicados = [];
  var listaBusca = [];
  var listaSexoMasculino = [];
  var listaSexoFeminino = [];
  var pessoasDoSexoMasculino = 0;
  var pessoasDoSexoFeminino = 0;
  var listaMaioresDe18 = [];
  var pessoaMaisVelha;
  var idadeMaior = 0;

  //! Baseado na lista acima.

  novaListaPessoas.sort((pessoa1, pessoa2) {
    final pessoaDados1 = pessoa1.split('|');
    final pessoaDados2 = pessoa2.split('|');

    final nomePessoa1 = pessoaDados1[0];
    final nomePessoa2 = pessoaDados2[0];

    final idadePessoa1 = int.parse(pessoaDados1[1]);
    final idadePessoa2 = int.parse(pessoaDados2[1]);

    final sexoPessoa1 = pessoaDados1[2];
    final sexoPessoa2 = pessoaDados2[2];

    var adicionaPessoa1 =
        '${pessoaDados1[0]}|${pessoaDados1[1]}|${pessoaDados1[2]}';

    var adicionaPessoa2 =
        '${pessoaDados2[0]}|${pessoaDados2[1]}|${pessoaDados2[2]}';

    if (listaBusca.any((nome) => nome == nomePessoa1)) {
      // se já possui a pessoa na lista então não é adicionada
    } else {
      listaBusca.add(nomePessoa1);
      listaSemNomesDuplicados.add(adicionaPessoa1);

      if (idadePessoa1 >= 18) {
        listaMaioresDe18.add(adicionaPessoa1);
      }

      if (sexoPessoa1.toLowerCase() == 'masculino') {
        pessoasDoSexoMasculino++;
        listaSexoMasculino.add(adicionaPessoa1);
      } else if (sexoPessoa1.toLowerCase() == 'feminino') {
        pessoasDoSexoFeminino++;
        listaSexoFeminino.add(adicionaPessoa1);
      } else {
        // não faz nada
      }
    }

    if (listaBusca.any((nome) => nome == nomePessoa2)) {
      // se já possui a pessoa na lista então não é adicionada
    } else {
      listaBusca.add(nomePessoa2);
      listaSemNomesDuplicados.add(adicionaPessoa2);

      if (idadePessoa2 >= 18) {
        listaMaioresDe18.add(adicionaPessoa2);
      }

      if (sexoPessoa2.toLowerCase() == 'masculino') {
        pessoasDoSexoMasculino++;
        listaSexoMasculino.add(adicionaPessoa2);
      } else if (sexoPessoa2.toLowerCase() == 'feminino') {
        pessoasDoSexoFeminino++;
        listaSexoFeminino.add(adicionaPessoa2);
      } else {
        // não faz nada
      }

      if (idadePessoa1 > idadeMaior) {
        idadeMaior = idadePessoa1;
        pessoaMaisVelha = adicionaPessoa1;
      }

      if (idadePessoa2 > idadeMaior) {
        idadeMaior = idadePessoa2;
        pessoaMaisVelha = adicionaPessoa2;
      }
    }

    return nomePessoa1.compareTo(nomePessoa2);
  });

  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  separador('1 - Remova os pacientes duplicados e apresente a nova lista');
  print('\n $listaSemNomesDuplicados');

  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  separador(
      '2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas');
  print('\nQuantidade de pessoas do sexo Masculino: $pessoasDoSexoMasculino');
  print(listaSexoMasculino);
  print('\nQuantidade de pessoas do sexo Feminino: $pessoasDoSexoFeminino');
  print(listaSexoFeminino);

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  separador(
      '3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome');
  print('\n $listaMaioresDe18');

  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  separador('4 - Encontre a pessoa mais velha e apresente o nome dela.');
  print('\n $pessoaMaisVelha');
}
