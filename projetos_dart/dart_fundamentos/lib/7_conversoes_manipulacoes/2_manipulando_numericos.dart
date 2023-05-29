void main() {
  final idade = 30;

  print('Sua idade ${idade.toString()}');

  final valor = -20;

  if (valor.isNegative) {
    print(valor);
  }

  final valorDouble = 10.65;

  print(valorDouble.round());
  print(valorDouble.roundToDouble());

  final valorString = '30';

  final valorInt = int.parse(valorString);
  print(valorInt);

  final valorString2 = 'Trinta';

  final valorInt2 = int.tryParse(valorString2);
  print(valorInt2);

  final precoCamiseta = 30.27876;
  print(precoCamiseta.toStringAsFixed(2));
}
