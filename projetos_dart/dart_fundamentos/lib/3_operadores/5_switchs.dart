void main() {
  final diaDaSemana = 0;
  var diaDaSemanaStr = '';

  switch (diaDaSemana) {
    case 0:
      diaDaSemanaStr = 'Domingo';
      break;
    case 1:
      diaDaSemanaStr = 'Segunda-feira';
      break;
    case 2:
      diaDaSemanaStr = 'Teça-feira';
      break;
    case 3:
      diaDaSemanaStr = 'Quarta-feira';
      break;
    case 4:
      diaDaSemanaStr = 'Quinta-feira';
      break;
    case 5:
      diaDaSemanaStr = 'Sexta-feira';
      break;
    case 6:
      diaDaSemanaStr = 'Sábadao';
      break;
    default:
      diaDaSemanaStr = 'Não é um dia da semana';
      break;
  }

  print(diaDaSemanaStr);
}
