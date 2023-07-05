import 'package:dart_poo/7_polimorfismo/anestesista.dart';

class ResidenteAnestesia extends Anestesista {
  @override
  void operar() {
    print('Preparar e esterilizar os equipamentos');
  }
}
