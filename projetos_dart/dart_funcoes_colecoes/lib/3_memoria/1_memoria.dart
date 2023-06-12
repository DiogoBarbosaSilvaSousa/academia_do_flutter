void main() {
  var lista = ['Rodrigo'];
  print(lista.hashCode);
  print(lista);

  funcao(lista);
  print(lista);

  separador();

  var nome = 'Rodrigo Rahman';
  print(nome);
  print(nome.hashCode);
  funcao2(nome);

  separador();

  var list = ['Rodrigo'];
  print(list);
  addNew(list);
  print(list);
}

separador() {
  print('----------------------------------------------------');
}

void funcao(List<String> nomes) {
  print(nomes.hashCode);
  nomes.add('Rahman');
}

void funcao2(String nome) {
  nome += ' Academia do Flutter';
  print(nome);
  print(nome.hashCode);
}

List<String> addNew(List<String> nomes) {
  var novoNomes = [...nomes];
  novoNomes.add('Rodrigo Rahman');
  print(novoNomes);
  return novoNomes;
}
