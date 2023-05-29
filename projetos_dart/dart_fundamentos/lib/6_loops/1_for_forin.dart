void main() {
  var numeros = List.generate(10, (index) => index);
  var nomes = ['Rodrigo', 'Guilherme', 'Arthur', 'Sandra', 'Marcos'];

  print('\nImprimindo números com for convencional\n');
  for (var i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }

  print('\nImprimindo nomes com for convencional\n');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  print('\nImprimindo número com for-in\n');
  for (var numero in numeros) {
    print(numero);
  }

  print('\nImprimindo nome com for-in\n');
  for (var nome in nomes) {
    print(nome);
  }

  print('\nImprimindo nomes com for convencional e break\n');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
    if (nomes[i] == 'Guilherme') {
      break;
    }
  }

  print('\nImprimindo nomes com for convencional e continue\n');
  for (var i = 0; i < nomes.length; i++) {
    if (i == 1) {
      continue;
    }
    print(nomes[i]);
  }
}
