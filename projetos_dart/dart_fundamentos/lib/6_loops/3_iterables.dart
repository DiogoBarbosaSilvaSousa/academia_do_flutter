void main() {
  var numeros = List.generate(10, (index) => index);

  numeros.where((numero) => numero != 5).forEach((numero) => print(numero));

  final numerosAte5 = numeros.takeWhile((numero) => numero < 6);
  print(numerosAte5);
  print(numerosAte5.elementAt(4));

  var nomes = ['Rodrigo', 'Guilherme', 'Arthur', 'Sandra', 'Marcos'];
  var nomesSkip = nomes.skipWhile((nome) {
    if (nome != 'Arthur') {
      return true;
    } else {
      return false;
    }
  }).toList();

  print(nomesSkip);

  var numeroStrList = numeros.map((numero) {
    return 'Número é $numero';
  }).toList();

  print(numeroStrList);

  var numeroList = numeros.map((numero) {
    return numero + 10;
  }).toList();

  print(numeroList);

  final numerosRevertidos = numeroList.reversed.toList();
  print(numerosRevertidos);

  var nomesRevertidos = nomes.reversed.toList();
  print(nomesRevertidos);
}
