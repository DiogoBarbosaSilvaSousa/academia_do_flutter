void main() {
  var numeros = List.generate(10, (index) => index);
  numeros.forEach(printAcademia);

  separador();

  // Expand
  // Array BiDimensional
  var lista = [
    [1, 2],
    [3, 4]
  ];

  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);

  separador();

  print(lista[0][1]);

  separador('Any');
  // Any
  final listaBusca = ['Rodrigo', 'João', 'José'];

  if (listaBusca.any((nome) => nome == 'João')) {
    print('Têm João.');
  } else {
    print('Não tem João.');
  }

  separador('Every');
  // Every
  final listaBusca2 = ['Rodrigo', 'João', 'José'];
  if (listaBusca2.every((nome) => nome.contains('o'))) {
    print('Todos os nomes tem a letra o.');
  } else {
    print('Nem todos os nomes têm a letra O.');
  }

  separador('Sort');
  var listaParaOrdenacao = [99, 22, 10, 9, 765, 1, 2, 3, 0, 100, 300];
  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  var listaNomesOrdenacao = ['Rodrigo', 'João', 'José', 'Maria', 'Ana'];
  listaNomesOrdenacao.sort();
  print(listaNomesOrdenacao);

  var listaPacientes = [
    'Rodrigo Rahman|37',
    'Luana Rahman|35',
    'Guilherme|18',
    'Arthur|5',
    'Antônio|50',
  ];

  //cópia da lista original
  var novaListaPacientes = [...listaPacientes];

  listaPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });

  print(listaPacientes);

  separador('.sort com CompareTo');
  // CompareTo
  var listaPacientes2 = [
    'Rodrigo Rahman|37',
    'Luana Rahman|35',
    'Guilherme|18',
    'Arthur|5',
    'Antônio|50',
  ];

  listaPacientes2.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });

  print(listaPacientes2);

  separador('Pacientes por função');
  // Pacientes por função

  var listaPacientes3 = [
    'Rodrigo Rahman|37',
    'Luana Rahman|35',
    'Guilherme|18',
    'Arthur|5',
    'Antônio|50',
  ];
  print('Antes');
  print(listaPacientes3);
  funcaoQualquer(listaPacientes3);
  print('Depois');
  print(listaPacientes3);
}

void printAcademia(int valor) {
  print(valor);
}

void separador([String texto = '']) {
  print('\n');
  print('-----------------------------${texto}-----------------------------');
}

void funcaoQualquer(List<String> pacientes) {
  final localPacientes = [...pacientes];

  localPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(localPacientes);
}
