void main() {
  //const cor = 'vermelho';
  var cor = Cores.vermelho;

  if (cor == Cores.vermelho) {}

  // Transformando a string azul em um enum Cores.azul
  // Antes da versão 2.15
  var azul = 'azul';
  var corAzul = Cores.values.where((cor) => cor.toString() == 'Cores.$azul');
  print(corAzul);

  // 2.15
  print(Cores.azul.name);
  var corAzul215 = Cores.values.byName(azul);
  print(corAzul215);

  var coresMap = Cores.values.asMap();
  print(coresMap);

  var coresMapName = Cores.values.asNameMap();
  print(coresMapName);

  var corAzulPeloMap = coresMapName[azul];
  print(corAzulPeloMap);

  // Cores.values.byName('branco');

  var corBranco = coresMapName['branco'];
  print(corBranco);
}

enum Cores {
  azul,
  vermelho,
  laranja,
  verde,
  preto,
}
