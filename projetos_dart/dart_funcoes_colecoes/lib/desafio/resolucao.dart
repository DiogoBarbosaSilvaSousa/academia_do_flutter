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
  print('1 - Remova os pacientes duplicados e apresente a nova lista \n');

  // 'Set' já remove as duplicações por padrão
  final pessoasSemDuplicado = pessoas.toSet();
  print('$pessoasSemDuplicado \n');

  // 'Map' faço um mapeamento da lista de pessoas
  final listaPessoasMapeadas =
      pessoasSemDuplicado.map((e) => e.split('|')).toList();
  print('$listaPessoasMapeadas \n');

  // 'forEach' para poder exibir uma lista
  listaPessoasMapeadas.forEach((p) => print(p[0]));

  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas

  final mapSexo = <String, List<String>>{};
  for (var pessoa in listaPessoasMapeadas) {
    final sexo = pessoa[2].toLowerCase();
    final listaMasculino = mapSexo['M'] ?? <String>[];
    final listaFeminino = mapSexo['F'] ?? <String>[];

    if (sexo == 'masculino') {
      listaMasculino.add(pessoa[0]);
    }

    if (sexo == 'feminino') {
      listaFeminino.add(pessoa[0]);
    }

    mapSexo['M'] = listaMasculino;
    mapSexo['F'] = listaFeminino;
  }

  print('');
  print(
      '2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas');
  final masculinos = mapSexo['M'] ?? <String>[];
  final femininos = mapSexo['F'] ?? <String>[];

  print('');
  print('Masculinos (${masculinos.length})');
  masculinos.forEach(print);

  print('');
  print('Femininos (${femininos.length})');
  femininos.forEach(print);

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome

  final pessoasMaiores18 = listaPessoasMapeadas.where((p) {
    final idade = int.tryParse(p[1]) ?? 0;

    return idade > 18;
  }).toList();

  print('');
  print(
      '3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome');
  pessoasMaiores18.forEach((p) => print(p[0]));

  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.

  final pessoasOrdenada = [...listaPessoasMapeadas];

  pessoasOrdenada.sort((p1, p2) {
    final idadeP1 = int.tryParse(p1[1]) ?? 0;
    final idadeP2 = int.tryParse(p2[1]) ?? 0;
    return idadeP2.compareTo(idadeP1);
  });

  final pessoaMaisVelha = pessoasOrdenada.first;

  print('');
  print('4 - Encontre a pessoa mais velha e apresente o nome dela.');
  print(
      'A pessoa mais velha é ${pessoaMaisVelha[0]} e têm ${pessoaMaisVelha[1]} anos.');
}
