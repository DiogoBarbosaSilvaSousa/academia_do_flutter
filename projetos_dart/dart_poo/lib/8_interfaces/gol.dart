import 'carro.dart';

class Gol implements Carro {
  @override
  String motor = '2.0';

  @override
  int portas = 4;

  @override
  int rodas = 4;

  @override
  int velocidadeMaxima() {
    return 200;
  }

  //Somente a classe gol vai ter acesso e não Carros.
  String tipoDeRodas() {
    return 'Rodas esportivas';
  }
}
