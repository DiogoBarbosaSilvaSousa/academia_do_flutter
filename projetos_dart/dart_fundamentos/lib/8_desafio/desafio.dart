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
  print('\nPacientes com mais de 20 anos.');
  for (var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    var idadePaciente = int.tryParse(dadosPaciente[1]) ?? 0;
    var nomePaciente = dadosPaciente[0];
    if (idadePaciente > 20) {
      print('${nomePaciente}');
    }
  }
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  print('\nPacientes em cada profissão.');

  var desenvolvedor = 0;
  var estudante = 0;
  var dentista = 0;
  var jornalista = 0;

  for (var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    var profissaoPaciente = dadosPaciente[2];

    switch (profissaoPaciente.toLowerCase()) {
      case 'desenvolvedor':
        desenvolvedor += 1;
        break;
      case 'estudante':
        estudante += 1;
        break;
      case 'dentista':
        dentista += 1;
        break;
      case 'jornalista':
        jornalista += 1;
        break;
    }
  }
  print('Densenvolvedor ${desenvolvedor}');
  print('Estudante ${estudante}');
  print('Dentista ${dentista}');
  print('Jornalista ${jornalista}');
  //! 3 - Apresente a quantidade de pacientes que moram em SP

  var pacienteSP = 0;
  print('\nPacientes que vivem em SP.');
  for (var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    var cidadePaciente = dadosPaciente[3];
    if (cidadePaciente.toLowerCase() == 'sp') {
      pacienteSP += 1;
    }
  }
  print('${pacienteSP}');
}
