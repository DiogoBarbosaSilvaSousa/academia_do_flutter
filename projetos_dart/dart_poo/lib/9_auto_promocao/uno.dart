import 'carro.dart';

class Uno implements Carro {
  @override
  String motor = '1.0';

  @override
  int portas = 4;

  @override
  int rodas = 4;

  @override
  int velocidadeMaxima() {
    return 160;
  }
}
