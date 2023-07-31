void main() {
  final numeros = [1, 2, 3, 4];
  print(numeros);
  numeros.add(1);
  print(numeros);

  final nomes = ['Rodrigo', 'João', 'Maria', 'Guilherme'];
  print(nomes);

  var listNumeros = <int?>[1, 2, 3, 4, null, 5];

  for (int i = 0; i < listNumeros.length; i++) {
    print(listNumeros[i]);
  }

  final nomes2 = ['Rodrigo', 'Luana', 'Maria'];
  nomes.add('Renata');
  print(nomes2);
  nomes.addAll(['Diogo', 'Viviane', 'Mariana']);
  print(nomes2);

  final numerosGeradosParaCalculo = List.generate(100, (index) => index + 1);
  print(numerosGeradosParaCalculo);
  var soma = numerosGeradosParaCalculo.fold<int>(
    0,
    (previousValue, numero) => previousValue + numero,
  );
  print(soma);

  // Spread Operator

  var listaNumerosSpreadB = [4, 5, 6];
  var listaNumerosSpread = [1, 2, 3, ...listaNumerosSpreadB];
  print(listaNumerosSpread);

  // Collection if

  var promocaoAtiva = true;
  var produtos = [
    'Cerveja',
    'Refrigerante',
    if (promocaoAtiva) 'Suco de laranja'
  ];
  print(produtos);

  var promocaoAtiva2 = false;
  var produtos2 = [
    'Cerveja',
    'Refrigerante',
    if (promocaoAtiva2) 'Suco de laranja'
  ];
  print(produtos2);

  // Collection For
  var listaInts = [1, 2, 3];
  var listaStrings = ['#0', for (var i in listaInts) '#$i'];
  print(listaStrings);
}
