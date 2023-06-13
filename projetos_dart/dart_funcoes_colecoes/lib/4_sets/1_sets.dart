void main() {
  var numerosLista = <int?>[];
  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(3);
  numerosLista.add(3);
  numerosLista.add(null);
  numerosLista.add(1);
  numerosLista.add(2);
  print(numerosLista);

  separador();

  var numerosSet = <int?>{};

  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(3);
  numerosSet.add(null);
  numerosSet.add(1);
  numerosSet.add(2);
  print(numerosSet);

  separador();

  print(numerosLista.toSet());

  separador('.forEach');
  numerosSet.forEach(print);

  separador('.difference');

  var numeros1 = {1, 2, 3, 4, 5, 6};
  var numeros2 = {1, 3, 4, 7};

  print(numeros1.difference(numeros2));
  print(numeros2.difference(numeros1));

  separador('.union');
  print(numeros1.union(numeros2));
  print(numeros2.union(numeros1));

  separador('.intersection');
  print(numeros1.intersection(numeros2));
  print(numeros2.intersection(numeros1));

  var nomes1 = {'Rodrigo', 'Luana', 'José'};
  var nomes2 = {'Rodrigo', 'Joaquim', 'Guilherme'};

  print(nomes1.intersection(nomes2));

  separador('.lookup');
  print(numeros1.lookup(1));
  print(numeros1.lookup(10));
  print(nomes1.lookup('Rodrigo'));
  print(nomes1.lookup('rodrigo'));

  separador('elementAt');
  print(nomes1.elementAt(0));

  print(nomes1.toList()[0]);
}

separador([String texto = '']) {
  print('------------------------------------');

  if (texto.isNotEmpty) {
    print(texto);
  }
}
