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

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  print('1 - Remova os pacientes duplicados e apresente a nova lista');
  print('');
  final novaListaPessoas = pessoas.toSet().toList();
  print(novaListaPessoas);
  print('');
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  print(
      '2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas');
  print('');
  final listaMasculina = [...novaListaPessoas];

  listaMasculina.removeWhere((pessoa) {
    var masculino = pessoa.split('|')[2].toLowerCase();
    if (masculino == 'masculino') {
      return false;
    }
    return true;
  });

  print(listaMasculina);

  final listaFeminina = [...novaListaPessoas];
  listaFeminina.removeWhere((pessoa) {
    var feminino = pessoa.split('|')[2].toLowerCase();
    if (feminino == 'feminino') {
      return false;
    }
    return true;
  });

  print(listaFeminina);
  print('');
  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome

  print(
      '3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome');
  print('');
  final listaMaiores18 = [...novaListaPessoas];
  listaMaiores18.removeWhere((pessoa) {
    var idade = pessoa.split('|')[1];
    if ((int.tryParse(idade) ?? 0) > 18) {
      return false;
    }
    return true;
  });
  print(listaMaiores18);
  print('');

  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  print('4 - Encontre a pessoa mais velha e apresente o nome dela.');
  print('');
  final listaOrdenada = [...pessoas];

  listaOrdenada.sort((p1, p2) {
    var idade1 = int.tryParse(p1.split('|')[1]) ?? 0;
    var idade2 = int.tryParse(p2.split('|')[1]) ?? 0;

    return idade1.compareTo(idade2);
  });

  print(listaOrdenada.last);
  print('');
}
