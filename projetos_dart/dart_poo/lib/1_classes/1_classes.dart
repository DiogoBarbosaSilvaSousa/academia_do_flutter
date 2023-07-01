import 'camiseta.dart';

void main() {
  print(Camiseta.nome);
  print(Camiseta.recuperarNome());

  var camisetaNike = Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.cor = 'Preta';
  camisetaNike.marca = 'Nike';

  print(''' 
          Camiseta: ${camisetaNike}
              Tamanho: ${camisetaNike.tamanho}
              Cor: ${camisetaNike.cor}
              Marca: ${camisetaNike.marca}
              Tipo de Lavagem: ${camisetaNike.tipoDeLavagem()}
  ''');

  var camisetaAdidas = Camiseta();
  camisetaAdidas.tamanho = 'G';
  camisetaAdidas.cor = 'Preta';
  camisetaAdidas.marca = 'Adidas';

  print(''' 
          Camiseta: ${camisetaAdidas}
              Tamanho: ${camisetaAdidas.tamanho}
              Cor: ${camisetaAdidas.cor}
              Marca: ${camisetaAdidas.marca}
              Tipo de Lavagem: ${camisetaAdidas.tipoDeLavagem()}
  ''');
}
