void main() {
  final idade = 18;

  if (idade >= 18) {
    print('Pode tirar habilitação.');
  } else {
    print('Não posso tirar habilitação.');
  }

  final eMaioDeIdade = idade >= 18 ? true : false;

  print('É maior de idade ? ${eMaioDeIdade.toString()}');
}
