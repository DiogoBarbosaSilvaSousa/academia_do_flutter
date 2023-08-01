void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  print('1 - Apresente os pacientes com mais de 20 anos e print o nome deles');
  print('');
  final pacientesCom20AnosOuMais = pacientes;

  pacientesCom20AnosOuMais.removeWhere((paciente) {
    var idade = paciente.split('|')[1];

    if ((int.tryParse(idade) ?? 0) >= 20) {
      return false; // quando false ele não remove
    }
    return true;
  });

  for (var paciente in pacientesCom20AnosOuMais) {
    print(paciente);
  }
  print('');

  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  print(
      '2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)');
  print('');

  print('Desenvolvedores:');
  pacientes.where((paciente) {
    var profissao = paciente.split('|')[2];
    if (profissao.toLowerCase() == 'desenvolvedor') {
      return true;
    }
    return false;
  }).forEach((paciente) => print(paciente));

  print('');

  print('Estudantes:');
  pacientes.where((paciente) {
    var profissao = paciente.split('|')[2];
    if (profissao.toLowerCase() == 'estudante') {
      return true;
    }
    return false;
  }).forEach((paciente) => print(paciente));

  print('');
  print('Dentistas:');
  pacientes.where((paciente) {
    var profissao = paciente.split('|')[2];
    if (profissao.toLowerCase() == 'dentista') {
      return true;
    }
    return false;
  }).forEach((paciente) => print(paciente));

  print('');

  print('Jornalistas:');
  pacientes.where((paciente) {
    var profissao = paciente.split('|')[2];
    if (profissao.toLowerCase() == 'jornalista') {
      return true;
    }
    return false;
  }).forEach((paciente) => print(paciente));

  print('');

  //! 3 - Apresente a quantidade de pacientes que moram em SP
  print('3 - Apresente a quantidade de pacientes que moram em SP');
  print('');

  print('Pacientes que moram em São Paulo - SP:');
  pacientes.where((paciente) {
    var localidade = paciente.split('|')[3];
    if (localidade.toLowerCase() == 'sp') {
      return true;
    }
    return false;
  }).forEach((paciente) => print(paciente));

  print('');
}
