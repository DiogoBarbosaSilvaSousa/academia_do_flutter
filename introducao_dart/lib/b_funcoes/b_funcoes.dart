void main() {
  var primeiroNome = recuperarPrimeiroNome('Diogo Barbosa Silva Sousa');

  print(primeiroNome);

  funcaoSemRetorno();
}

String recuperarPrimeiroNome(String nomeCompleto) {
  var nomeQuebrado = nomeCompleto.split(' ');

  return nomeQuebrado[0];
}

void funcaoSemRetorno() {
  print('Executando função sem retorno.');
}
