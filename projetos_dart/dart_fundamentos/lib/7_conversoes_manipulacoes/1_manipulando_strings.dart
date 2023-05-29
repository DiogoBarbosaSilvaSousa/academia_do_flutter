void main() {
  final nome = 'Rodrigo Rahman';

  var subStringNome = nome.substring(7);
  print(subStringNome);

  var subStringNome2 = nome.substring(0, 7);
  print(subStringNome2);

  var sexo = 'Masculino';
  var sexoSigla = sexo.substring(0, 1);

  if (sexoSigla == 'M') {
    print('Olá seu sexo é Masculino');
  }

  if (sexo.startsWith('Mas')) {
    print('Olá seu sexo é Masculino.');
  }

  if (sexo.toLowerCase().startsWith('mas')) {
    print('Olá seu sexo é Masculino.');
  }

  if (nome.toLowerCase().contains('rahman')) {
    print('É da família Rahman.');
  }

  // Interpolação;
  var primeiroNome = 'Rodrigo';
  var segundoNome = 'Rahman';

  var saudacao = 'Olá ${primeiroNome} ${segundoNome} seja bem vindo';
  print(saudacao);

  print('Soma de 2 + 2 é ${2 + 2}');

  var paciente = 'Rodrigo Rahman|30|Especialista Dart e Flutter|SP';

  var dadosPaciente = paciente.split('|');

  print(dadosPaciente);
  print(dadosPaciente[0]);
  print(dadosPaciente[1]);
  print(dadosPaciente[2]);
  print(dadosPaciente[3]);

  for (var dado in dadosPaciente) {
    print(dado);
  }

  dadosPaciente.forEach((dado) => {print(dado)});

  var pacientes = [
    'Rodrigo Rahman|30|Especialista Dart e Flutter|SP',
    'Luana Rahman|30|Analista|SP',
    'Guilherme Silva|30|Analista|SP',
    'João Teles Almeida|30|Analista|SP',
  ];

  for (paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    var nomeCompleto = dadosPaciente[0];
    var nomes = nomeCompleto.split(' ');
    print('${nomes.first} ${nomes.last}');
  }
}
